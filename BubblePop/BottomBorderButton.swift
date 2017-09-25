//
//  BottomBorderLabel.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit

class BottomBorderButton: UIButton {

    
    @IBInspectable let border_width:CGFloat = 1
    
    override func draw(_ rect: CGRect) {
        let bottomLine = UIView(frame: CGRect(x: 0, y: self.frame.height - border_width, width: self.frame.width, height: border_width))
        bottomLine.backgroundColor = UIColor.init(red: 0xbd, green: 0xbd, blue: 0xbd)
        self.addSubview(bottomLine)
    }

}
