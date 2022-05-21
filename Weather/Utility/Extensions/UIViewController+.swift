//
//  UIViewController+.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import Foundation
import UIKit

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            T(nibName: String(describing: T.self), bundle: nil)
        }

        return instantiateFromNib()
    }
}
