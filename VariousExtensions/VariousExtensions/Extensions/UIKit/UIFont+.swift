//
//  UIFont+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import UIKit

extension UIFont {
    
    /// サイズを指定して、noto sansのフォントを使用する
    static func fontForNotoSans(size: CGFloat) -> UIFont {
        return UIFont(name: "NotoSansJP-Regular", size: size)!
    }
    
    /// 固定のサイズでnoto sansのフォントを使用する
    static func fontForNotoSans_Regular_12() -> UIFont {
        return .fontForNotoSans(size: 12)
    }
}
