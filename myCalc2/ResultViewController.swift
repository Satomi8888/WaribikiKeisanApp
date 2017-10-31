//
//  ResultViewController.swift
//  myCalc2
//
//  Created by 遠山　聡美 on 2017/10/31.
//  Copyright © 2017年 satomi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //最初の画面で入力された金額
    var price: Int = 100
    //前の画面で入力されたパーセンテージ
    var percent: Int = 20
    
    //計算を表示するフィールド
    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //割引率を算出する
        let percentValue = Float(percent)/100
        //割引額を算出する
        let waribikiPrice = Float(price) * percentValue
        //割引後の額を計算する
        let percentOffPrice = price - Int(waribikiPrice)
        //金額を表示する
        resultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
