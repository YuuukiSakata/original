//
//  SecondViewController.swift
//  original
//
//  Created by Yuki Sakata on 2016/02/21.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    // 目標額
    @IBOutlet weak var moneyField: UITextField!
    
    //日付
    @IBOutlet weak var picker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // myTextFieldのデリゲートになる
        moneyField.delegate = self
    }
    
    // 画面タップでキーボードを下げる
    @IBAction func tapView(sender: UITapGestureRecognizer) {
        // 編集終了でキーボードを下げる
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}