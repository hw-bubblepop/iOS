//
//  RegViewController.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class RegViewController: UIViewController {
    
    @IBOutlet weak var editName: BottomBorderTextField!
    @IBOutlet weak var editMail: BottomBorderTextField!
    @IBOutlet weak var editPass: BottomBorderTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        // Do any additional setup after loading the view.
    }
    

    @IBAction func ageBtn(_ sender: UIButton) {
        var rows = [String]()
        
        for i in 1...100{
            rows.append("\(i)세")
        }

        
        NSLog("click")
        ActionSheetStringPicker.show(withTitle: "나이", rows: rows, initialSelection: 18, doneBlock: {
            picker, indexs, values in
            sender.setTitle(values as! String, for: .normal)
            return
        }, cancel: {
            ActionStringCancelBlock in
            return
        }, origin: sender.superview!.superview)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

}
