//
//  String+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import Foundation

// MARK: Validation
extension String {

    func isAlphanumeric() -> Bool {
        return self.range(of: "[^0-9]+", options: .regularExpression) == nil && self != ""
    }

    func isInRange() -> Bool {
        let range: ClosedRange<Int> = 0...127
        if let int: Int = Int(self) {
            return range.contains(int)
        } else {
            return false
        }
    }

    var isUrl: Bool {
        let linkValidation: UInt64 = NSTextCheckingResult.CheckingType.link.rawValue
        guard let detector: NSDataDetector = try? .init(types: linkValidation) else { return false }

        let results: [NSTextCheckingResult] = detector.matches(in: self,
                                                               options: .reportCompletion,
                                                               range: NSMakeRange(0, self.count))
        return results.first?.url != nil
    }
}
