//
//  UserDefaults+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import Foundation

extension UserDefaults {
    
    /// 値の全削除
    /// saple: UserDefaults.standard.removeAll()
    func removeAll() {
        dictionaryRepresentation().forEach { removeObject(forKey: $0.key) }
    }

}
