//
//  UICollectionView+.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2021/10/14.
//

import UIKit

extension UICollectionView {

    func registerNib<T: UICollectionViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        self.register(UINib(nibName: String(describing: T.self), bundle: bundle),
                      forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func registerNibs<T: UICollectionViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { registerNib(cellType: $0, bundle: bundle)}
    }
    
    
    func register<T: UICollectionReusableView>(reusableViewType: T.Type,
                                               ofKind kind: String = UICollectionView.elementKindSectionHeader,
                                               bundle: Bundle? = nil)
    {
        let className = String(describing: reusableViewType.self)
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    func register<T: UICollectionReusableView>(reusableViewTypes: [T.Type],
                                               ofKind kind: String = UICollectionView.elementKindSectionHeader,
                                               bundle: Bundle? = nil)
    {
        reusableViewTypes.forEach { register(reusableViewType: $0, ofKind: kind, bundle: bundle) }
    }
    
    
    func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: String(describing: type.self), for: indexPath) as! T
    }
    
    func dequeueReusableView<T: UICollectionReusableView>(with type: T.Type,
                                                          for indexPath: IndexPath,
                                                          ofKind kind: String = UICollectionView.elementKindSectionHeader) -> T
    {
        dequeueReusableSupplementaryView(ofKind: kind,
                                         withReuseIdentifier: String(describing: type.self),
                                         for: indexPath) as! T
    }
}
