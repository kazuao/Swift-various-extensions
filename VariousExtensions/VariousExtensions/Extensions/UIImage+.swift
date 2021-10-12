//
//  UIImage+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import UIKit

extension UIImage {
    
    /// URLから画像を取得する
    public convenience init(url: URL) {
        do {
            let data = try Data(contentsOf: url)
            self.init(data: data)!
            return
        } catch {
            assertionFailure("Errro: \(error.localizedDescription)")
        }
        self.init()
    }
}
