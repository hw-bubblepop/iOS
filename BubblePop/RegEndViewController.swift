//
//  RegEndViewController.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit

class RegEndViewController: UIViewController {

    @IBOutlet weak var successImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        successImage.layer.borderWidth = 1
        successImage.layer.masksToBounds = false
        successImage.layer.borderColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff).cgColor
        successImage.layer.cornerRadius = successImage.frame.height/2
        successImage.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnEndClick(_ sender: UIButton) {
        let storybaord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storybaord.instantiateViewController(withIdentifier: "Main")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
