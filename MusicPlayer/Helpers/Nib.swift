//
//  Nib.swift
//  MusicPlayer
//
//  Created by Andrey on 27.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

extension UIView {
    class func loadFromNib<T: UIView>() -> T {
           return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
       }
}
