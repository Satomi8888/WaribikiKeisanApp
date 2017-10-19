//
//  PercentViewController.swift
//  myCalc2
//
//  Created by 遠山　聡美 on 2017/10/19.
//  Copyright © 2017年 satomi. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
    
    //金額を受け取るためのプロパティ
    var price:Int = 0
    //割引％ニュイ力フィールド
    
    @IBOutlet weak var persentField: UITextField!
    
    
    @IBAction func tap1Button(_ sender: Any) {
        let value:String = persentField.text! + "1"
        if let percent = Int(value){
            persentField.text = "\(percent)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
