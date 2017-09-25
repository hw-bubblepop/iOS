//
//  ViewController.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 24..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: TextField!
    @IBOutlet weak var passTextField: TextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var loginFBBtn: UIButton!
    @IBOutlet weak var regBtn: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        emailTextField.backgroundColor = .clear
        emailTextField.textColor = UIColor.black
        
        passTextField.backgroundColor = .clear
        passTextField.textColor = UIColor.black
        
        loginBtn.layer.cornerRadius = 3
        
        loginFBBtn.backgroundColor = .clear
        
        regBtn.backgroundColor = .clear
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

