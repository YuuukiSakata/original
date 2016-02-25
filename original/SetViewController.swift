//
//  SecondViewController.swift
//  original
//
//  Created by Yuki Sakata on 2016/02/21.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class SetViewController: UIViewController, UITextFieldDelegate {
    
    //目標
    @IBOutlet weak var GoalField: UITextView!
    
    //目標額
    @IBOutlet weak var MoneyField: UITextField!
    
    //貯金額
    @IBOutlet weak var SavingsMoneyField: UITextField!
    
    //日付
    @IBOutlet weak var picker: UIDatePicker!
    
    //目標を更新
    @IBAction func GoalUpdate(){
        let ud3 = NSUserDefaults.standardUserDefaults()
        ud3.setObject(GoalField.text, forKey: "GoalUpdate")
    }
    
    //目標額を更新
    @IBAction func MoneyUpdate(){
        let ud = NSUserDefaults.standardUserDefaults()
        ud.setObject(Int(MoneyField.text!), forKey: "MoneyUpdate")
    }
    
    //貯金額を更新
    @IBAction func SavingMoneyUpdate(){
        let ud2 = NSUserDefaults.standardUserDefaults()
        ud2.setObject(SavingsMoneyField.text, forKey: "SavingMoneyUpdate")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // myTextFieldのデリゲートになる
        MoneyField.delegate = self
        SavingsMoneyField.delegate = self
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