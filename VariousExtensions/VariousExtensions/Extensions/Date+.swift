//
//  Date+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/12/16.
//

import Foundation

extension Date {
    
    /// yyyy-MM-dd HH:mm:ss.ff形式で時刻を取得する
    func getDateFormatString() -> String {
        let locale = Locale(identifier: Const.localeJP)
        let format = "yyyy-MM-dd HH:mm:ss.SSS"
        let dateFormatter = DateFormatter()
        
        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: format,
                                                            options: 0,
                                                            locale: locale)
        return dateFormatter.string(from: self)
    }
}
