//
//  UIView+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import UIKit

extension UIView {
    
    /// UIViewから親のUIViewControllerを取得する
    func parentViewController() -> UIViewController? {
        var parentResponder: UIResponder? = self
        while true {
            guard let nextResponder = parentResponder?.next else { return nil }
            
            if let viewController = nextResponder as? UIViewController {
                return viewController
            }
            parentResponder = nextResponder
        }
    }
    
    /// UIViewから指定のUIViewを取得する
    func parentView<T: UIView>(type: T.Type) -> T? {
        var parentResponder: UIResponder? = self
        while true {
            guard let nextResponder = parentResponder?.next else { return nil }
            
            if let view = nextResponder as? T {
                return view
            }
            parentResponder = nextResponder
        }
    }
}
