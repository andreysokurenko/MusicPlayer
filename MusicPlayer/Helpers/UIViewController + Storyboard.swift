//
//  UIViewController + Storyboard.swift
//  MusicPlayer
//
//  Created by Andrey on 22.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func loadFromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error not init viewController")
        }
    }

}

