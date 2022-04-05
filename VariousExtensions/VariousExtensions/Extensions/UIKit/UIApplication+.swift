//
//  UIApplication+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import UIKit

extension UIApplication {
    public func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
