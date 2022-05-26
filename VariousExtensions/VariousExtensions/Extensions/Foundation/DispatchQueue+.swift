//
//  DispatchQueue+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/05/07.
//

import Foundation

extension DispatchQueue {
    /// 現在のThreadのログを出す
    static func log(action: String) {
        print("👀 (\(String(validatingUTF8: __dispatch_queue_get_label(nil))!)) \(action)")
    }
}
