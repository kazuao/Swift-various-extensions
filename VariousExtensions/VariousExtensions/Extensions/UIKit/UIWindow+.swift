//
//  UIWindow+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import UIKit

extension UIWindow {

    static var topMostController: UIViewController? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows
            .filter { $0.isKeyWindow }
            .first

        if var topController = window?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        return nil
    }
}
