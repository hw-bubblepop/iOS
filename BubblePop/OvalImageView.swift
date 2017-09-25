//
//  OvalImageView.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit

extension UIImageView{
    func makeOval(){
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff).cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
}

@IBDesignable
class OvalImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.makeOval()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.makeOval()
    }
}
