//
//  UIView+PinnedSubview.swift
//  Today
//
//  Created by Yulia Poznyakova on 28.05.2024.
//

import UIKit

extension UIView {
    func addPinnedSubview(
        _ subview: UIView, height: CGFloat? = nil,
        inserts: UIEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    ) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: topAnchor, constant: inserts.top).isActive = true
        subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inserts.left).isActive = true
        subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -1.0 * inserts.right).isActive = true
        subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1.0 * inserts.bottom).isActive = true
        if let height {
            subview.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
