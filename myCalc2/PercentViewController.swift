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
    
    
    @IBAction func tap0Button(_ sender: Any) {
        let value:String = persentField.text! + "0"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        let value:String = persentField.text! + "1"
        if let percent = Int(value){
            persentField.text = "\(percent)"
        }
    }

    @IBAction func tap2Button(_ sender: Any) {
        let value:String = persentField.text! + "2"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }

    }
 
    @IBAction func tap3Button(_ sender: Any) {
        let value:String = persentField.text! + "3"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
 
    @IBAction func tap4Button(_ sender: Any) {
        let value:String = persentField.text! + "4"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        let value:String = persentField.text! + "5"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        let value:String = persentField.text! + "6"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        let value:String = persentField.text! + "7"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }

    @IBAction func tap8Button(_ sender: Any) {
        let value:String = persentField.text! + "8"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        let value:String = persentField.text! + "9"
        if let persent = Int(value){
            persentField.text = "\(persent)"
        }
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
