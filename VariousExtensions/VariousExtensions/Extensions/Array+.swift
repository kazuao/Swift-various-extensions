//
//  Array+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import Foundation

extension Array {
    
    /// 配列のOut of Index対策
    /// sample: array[safe: index]
    subscript (safe index: Int) -> Element? {
        switch index {
        case self.indices:
            return self[index]
            
        default:
            return nil
        }
    }
    
    /// 配列の中身をシャッフルする
    /// array.shuffle
    mutating func shuffle() {
        for i in 0..<self.count {
            let j = Int(arc4random_uniform(UInt32(self.indices.last!)))
            if i != j {
                self.swapAt(i, j)
            }
        }
    }
    
    /// 変数として取得
    var shuffled: Array {
        var copied = Array<Element>(self)
        copied.shuffle()
        return copied
    }
}

