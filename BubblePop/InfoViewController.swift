//
//  InfoViewController.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class InfoViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var locBtn: BottomBorderButton!
    @IBOutlet weak var jobBtn: BottomBorderButton!
    @IBOutlet weak var groupEdit: BottomBorderTextField!
    @IBOutlet weak var levelEdit: BottomBorderTextField!
    @IBOutlet weak var proEdit: BottomBorderTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func locBtnClick(_ sender: UIButton) {
        let rows = ["서울특별시", "부산광역시", "대구광역시", "인천광역시", "대전광역시", "울산광역시", "광주광역시", "세종특별자치시", "강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주특별자치도", "경기도", "해외"]
        ActionSheetStringPicker.show(withTitle: "거주지역", rows: rows, initialSelection: 0, doneBlock: {
            picker, indexs, values in
            sender.setTitle(values as? String, for: .normal)
            return
        }, cancel: {
            ActionStringCancelBlock in
            return
        }, origin: sender.superview!.superview)
    }

    @IBAction func jobBtnClick(_ sender: UIButton) {
        let rows = ["사무/금융직", "연구원, 엔지니어", "건축, 설계", "간호 및 기타 의료사", "디자이너", "언론인", "교사 및 강사", "공무원, 공사", "자영업, 사업", "예술가, 프리랜서", "승무원/항공관련", "서비스/영업", "학생", "변호사, 법조인", "회계사 등 전문직", "교수"]
        ActionSheetStringPicker.show(withTitle: "직업", rows: rows, initialSelection: 12, doneBlock: { index, indexs, values in
            sender.setTitle(values as? String, for: .normal)
            return
        }, cancel: { ActionStringCancelBlock in
            
            return
        }, origin: sender.superview!.superview)
        
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
