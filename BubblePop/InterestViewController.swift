//
//  InterestViewController.swift
//  BubblePop
//
//  Created by 윤영채 on 2017. 9. 25..
//  Copyright © 2017년 윤영채. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let interestDatas = ["교육", "강연", "세미나/컨퍼런스", "문화/예술", "취미활동", "소모임/친목행사", "공모전", "전시/박람회", "패션/뷰티", "이벤트/파티", "여행", "후원금 모금", "등산", "봉사활동", "공연/전시", "음악/악기", "낚시", "차/오토바이", "자전거", "취미, 여가, 여행", "사교/인맥"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension InterestViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interestDatas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "interestCell", for: indexPath) as! InterestCollectionViewCell
        cell.label.text = interestDatas[indexPath.row]
        
        cell.label.layer.borderColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff).cgColor
        cell.label.layer.borderWidth = 1
        cell.label.layer.cornerRadius = 2
        
        if(cell.isClicked){
            cell.label.textColor = UIColor.white
            cell.label.backgroundColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
        }else{
            cell.label.textColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
            cell.label.backgroundColor = .clear
        }
        
        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(InterestViewController.tabCell(_:))))
        return cell
    }
    
    func tabCell(_ recognizer: UITapGestureRecognizer){
        let view = recognizer.view as! InterestCollectionViewCell
        let label = view.label!
        
        if(view.isClicked){
            label.backgroundColor = UIColor.clear
            label.textColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
        }else{
            label.backgroundColor = UIColor.init(red: 0x6a, green: 0x95, blue: 0xff)
            label.textColor = UIColor.white
        }
        view.isClicked = !(view.isClicked)
    }
}

class InterestCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    var isClicked: Bool = false
}

