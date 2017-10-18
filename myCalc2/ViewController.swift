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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(_ sender: Any) {
        let value = priceField.text! + "1"
        //print(Int(value))
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }

    @IBAction func tap0Button(_ sender: Any) {
        let value = priceField.text! + "0"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
            priceField.text = "0"
    }
}

