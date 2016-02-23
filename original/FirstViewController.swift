//
//  FirstViewController.swift
//  original
//
//  Created by Yuki Sakata on 2016/02/21.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    //目標額
    @IBOutlet weak var moneyLabel: UILabel!
    
    //日付
    @IBOutlet weak var datetext: UILabel!
    @IBOutlet weak var picker: UIDatePicker!

    // クリアボタンで実行されるtextFieldShouldClear()デリゲートメソッド
    func textFieldShouldClear(textField: UITextField) -> Bool {
        moneyLabel.text = "0"
        return true
    }
    
    /// Date Pickerの選択を変えたとき
    @IBAction func valueChange(sender: AnyObject) {
        let dt = picker.date
        let fmt = NSDateFormatter()
        fmt.dateFormat = "yyyy/MM/dd"
        let str = fmt.stringFromDate(dt)
        datetext.text = str
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}