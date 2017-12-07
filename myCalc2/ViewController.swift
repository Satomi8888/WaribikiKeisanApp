//
//  ViewController.swift
//  myCalc2
//
//  Created by 遠山　聡美 on 2017/10/13.
//  Copyright © 2017年 satomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceField: UITextField!
    @IBAction func restart(_ segue: UIStoryboardSegue){
        //金額フィールドの値を0にする
        priceField.text = "0"
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        //priceという値で保存
        userDefaults.set("0", forKey: "price")
        //userDefultsへの値の保存を明示的に行う
        userDefaults.synchronize()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面をとりだす
        let viewController = segue.destination as! PercentViewController
        //金額フィールドの文字列を数値に変換する
        if let price = Int(priceField.text!){
            viewController.price = price
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        //nameというkeyを指定して保存していた値を取り出す
        if let value = userDefaults.string(forKey: "price") {
            //取り出した値をテキストフィールドい入れる
            priceField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//    var tapNumber:String = "0"
    
    func tapButton(tapNumber:String) {
        let value = priceField.text! + tapNumber
        if let price = Int(value){
            priceField.text = "\(price)"
            //UserDefaultsの参照
            let userDefaults = UserDefaults.standard
            //priceという値で保存
            userDefaults.set(priceField.text, forKey: "price")
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
        }

    }

    @IBAction func tap0Button(_ sender: Any) {
        tapButton(tapNumber: "0")
    }

    @IBAction func tap00Button(_ sender: Any) {
        tapButton(tapNumber: "00")
    }
    
    @IBAction func tapActionButton(_ sender: Any) {
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
            priceField.text = "0"
    }
}

