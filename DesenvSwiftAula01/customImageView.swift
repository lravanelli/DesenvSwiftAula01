//
//  customImageView.swift
//  DesenvSwiftAula01
//
//  Created by Usuário Convidado on 24/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

@IBDesignable class customImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {//didset é um observador de eventos
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

}

