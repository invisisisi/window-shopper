//
//  TransparentWhiteRoundedTextField.swift
//  window-shopper
//
//  Created by anonym on 05.08.18.
//  Copyright © 2018 anonym. All rights reserved.
//

import UIKit


@IBDesignable
class TransparentWhiteRoundedTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeTextfield()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextfield()
    }
    
    func customizeTextfield() {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2529698202)
        self.layer.cornerRadius = 5
        self.layer.borderColor = self.backgroundColor!.cgColor
        self.textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
