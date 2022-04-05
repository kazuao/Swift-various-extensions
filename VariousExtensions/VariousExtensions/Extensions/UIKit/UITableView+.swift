//
//  UITableView+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/14.
//

import UIKit

extension UITableView {
    
    func registerNib<T: UITableViewCell>(cell: T.Type, bundle: Bundle? = nil) {
        self.register(UINib(nibName: String(describing: T.self), bundle: bundle),
                      forCellReuseIdentifier: String(describing: T.self))
    }
    
    func registerNibs<T: UITableViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { registerNib(cell: $0, bundle: bundle )}
    }
    
    func dequeueReusableCell<T: UITableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}
