//
//  Text+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import SwiftUI

// MARK: タイトルラベルサイズ
extension Text {

    func size24Label() -> some View {
        let ctFont: CTFont = CTFontCreateWithName("HiraginoSans-W7" as CFString, 24, nil)
        return self.ctFont(ctFont)
    }

    func size20Label() -> some View {
        let ctFont: CTFont = CTFontCreateWithName("HiraginoSans-W7" as CFString, 20, nil)
        return self.ctFont(ctFont)
    }

    func size16Label() -> some View {
        let ctFont: CTFont = CTFontCreateWithName("HiraginoSans-W7" as CFString, 16, nil)
        return self.ctFont(ctFont)
    }
}


// MARK: ヒラギノフォントの下部が切れないよう対応
extension Text {
    public func ctFont(_ ctFont: CTFont) -> some View {
        let descent: CGFloat = CTFontGetDescent(ctFont)
        return self.font(.init(ctFont))
            .baselineOffset(descent)
            .offset(y: descent / 2)
    }
}


// MARK: TextでAttributedStringを使えるように拡張
extension Text {
    init(attributed: String, wantSearchWords: [String]) {
        var attr: AttributedString = .init(attributed)

        for str: String in wantSearchWords {
            if let range: Range<AttributedString.Index> = attr.range(of: str) {
                attr[range].foregroundColor = Color.userMessageBackgroundColor
            }
        }
        self.init(attr)
    }
}
