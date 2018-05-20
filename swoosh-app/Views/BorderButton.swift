//
//  BorderButton.swift
//  swoosh-app
//
//  Created by Roman on 5/18/18.
//  Copyright © 2018 Roman. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
