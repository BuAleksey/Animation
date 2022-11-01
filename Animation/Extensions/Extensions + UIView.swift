//
//  Extensions + View.swift
//  Animation
//
//  Created by Buba on 01.11.2022.
//

import UIKit

extension UIView {
    func configure() {
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 7
        self.layer.shadowOpacity = 0.5
    }
}
