//
//  AnyPublisher+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/12/16.
//

import Foundation
import Combine

/*
 CombineをRxSwiftのObservable.create風に使用する

 return AnyPublisher<Response, Error>.create { observer in

     let cancellable = self.response.sink(receiveCompletion: { _ in}) { response in
         do {
             let decodeData = try JSONDecoder().decode(Response.self, from: response)
             observer.onNext(decodeData)

         } catch {
             observer.onError(error)
         }
     }
     return Disposable {
         cancellable.cancel()
     }
 }
 */

struct AnyObserver<Output, Failure: Error> {
    let onNext: ( (Output) -> () )
    let onError: ( (Failure) -> () )
    let onComplete: ( () -> () )
}

struct Disposable {
    let dispose: () -> ()
}

extension AnyPublisher {

    static func create(subscribe: @escaping (AnyObserver<Output, Failure>) -> Disposable) -> Self {
        let subject = PassthroughSubject<Output, Failure>()
        var disposable: Disposable?

        return subject
            .handleEvents(receiveSubscription: { subscription in
                disposable = subscribe(
                    AnyObserver(onNext: { output in subject.send(output) },
                                onError: { failure in subject.send(completion: .failure(failure)) },
                                onComplete: { subject.send(completion: .finished) }
                    ) as! AnyObserver<Output, Failure>)
            }, receiveCancel: { disposable?.dispose() })
            .eraseToAnyPublisher()
    }
}
