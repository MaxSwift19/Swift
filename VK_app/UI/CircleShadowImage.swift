//
//  CircleShadowImage.swift
//  VK_app
//
//  Created by User on 17/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class CircleShadowImge: UIView {
    var image: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addImage() 
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addImage()
    }
    
    func addImage() {
        image = UIImageView(frame: frame)
        addSubview(image)
    }
    
    override func layoutSubviews() {
        image.frame = bounds
        
        layer.backgroundColor = UIColor.clear.cgColor
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 4.0
        layer.shadowOffset = CGSize(width: 0, height: 1)
        
 // Другой вариант через Storyboard -> Indentity Ispector -> User Defined Runtime Attributes + layer.cornerRadius = Int
        image.layer.cornerRadius = bounds.size.height / 2
        image.layer.masksToBounds = true
    }
}
