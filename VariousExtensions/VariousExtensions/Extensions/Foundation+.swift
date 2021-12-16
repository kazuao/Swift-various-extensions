//
//  Foundation+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/14.
//

import Foundation

protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

extension ClassNameProtocol {
    public static var className: String {
        String(describing: self)
    }
    
    public var className: String {
        Self.className
    }
}
