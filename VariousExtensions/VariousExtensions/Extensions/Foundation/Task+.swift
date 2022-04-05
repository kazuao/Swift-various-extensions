//
//  Task+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/12/16.
//

import Foundation

extension Task where Failure == Error {

    /*
     タスクに遅延を発生させる

     - 使用方法 -
     let loadSpinnerTask = Task.delayed(byTimeInterval: 0.15) {
        self.showLoadSinner()
     }

     Task {
        await prepareVideo()
        loadingSpinnerTask.cancel()
        hideLoadingSpinner()
     }
     */
    static func delayed(byTimeInterval delayInterval: TimeInterval,
                        priority: TaskPriority? = nil,
                        operation: @escaping @Sendable () async throws -> Success) -> Task {
        return Task(priority: priority) {
            let delay = UInt64(delayInterval * 1_000_000_000)
            await Task<Never, Never>.sleep(delay)
            return try await operation()
        }
    }
}
