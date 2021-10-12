//
//  UIViewController+Alert.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/12.
//

import UIKit

extension UIViewController {
    
    /// ボタンを配列で受け取り、アラートを表示する
    func showAlerts(title: String? = nil, message: String, actions: [UIAlertAction], from target: UIViewController?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        actions.forEach { alert.addAction($0) }
        
        // tintColor
//        alert.view.largeContentTitle = .blue
        
        // 指定のViewControllerがある場合
        if let target = target {
            target.present(alert, animated: true)
        } else {
            present(alert, animated: true)
        }
    }
}
