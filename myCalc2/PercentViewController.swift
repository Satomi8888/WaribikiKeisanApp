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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面をとりだす
        let percentViewController = segue.destination as! ResultViewController
        //金額フィールドの文字列を数値に変換する
        if let percent = Int(persentField.text!){
            percentViewController.percent = percent
        }
        percentViewController.price = price
    }
    
    //割引％入力フィールド
    
    @IBOutlet weak var persentField: UITextField!
    
    func tapButton(tapNumber:String) {
        let value = persentField.text! + tapNumber
        if let price = Int(value){
            persentField.text = "\(price)"
        }
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        tapButton(tapNumber: "0")
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        tapButton(tapNumber: "1")
    }

    @IBAction func tap2Button(_ sender: Any) {
        tapButton(tapNumber: "2")
    }
 
    @IBAction func tap3Button(_ sender: Any) {
        tapButton(tapNumber: "3")
    }
 
    @IBAction func tap4Button(_ sender: Any) {
        tapButton(tapNumber: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        tapButton(tapNumber: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        tapButton(tapNumber: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        tapButton(tapNumber: "7")
    }

    @IBAction func tap8Button(_ sender: Any) {
        tapButton(tapNumber: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        tapButton(tapNumber: "9")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
            persentField.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
