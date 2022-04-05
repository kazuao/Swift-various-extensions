//
//  View+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import SwiftUI

extension View {
    /// verticalとhorizontalのpaddingを一つのメソッドで変更
    func padding(vertical: CGFloat, horizontal: CGFloat) -> some View {
        return self
            .padding(.vertical, vertical)
            .padding(.horizontal, horizontal)
    }
}
