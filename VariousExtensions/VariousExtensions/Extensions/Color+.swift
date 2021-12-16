//
//  Color+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/12/16.
//

import SwiftUI

extension Color {

    /*
     Color.xcassetsに入れたカラーをViewで使うためのExtension

     example: Color.backgroundColor
     */
    // MARK: background color
    static let backgroundColor = Color("BackgroundColor")

    // MARK: global bar
    static let globalBarColor = Color("GlobalBarColor")
    static let globalBarButtonColor = Color("GlobalBarButtonColor")

    // MARK: server message
    static let serverMessageBackgroundColor = Color("ServerMessageBackgoundColor")
    static let serverMessageFontColor = Color("ServerMessageFontColor")

    // MARK: user message
    static let userMessageBackgroundColor = Color("UserMessageBackgroundColor")
    static let userMessageFontColor = Color("UserMessageFontColor")
}

