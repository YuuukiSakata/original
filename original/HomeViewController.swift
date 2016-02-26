//
//  SecondViewController.swift
//  original
//
//  Created by Yuki Sakata on 2016/02/21.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {
    
    //目標
    @IBOutlet weak var GoalLabel: UILabel!
    
    //目標期限
    @IBOutlet weak var DeadlineLabel: UILabel!
    
    //目標額
    @IBOutlet weak var MoneyLabel: UILabel!
    
    //貯金額合計
    @IBOutlet weak var SavingsMoneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //目標額表示
        let ud = NSUserDefaults.standardUserDefaults()
        let udId : AnyObject! = ud.objectForKey("MoneyUpdate")
        MoneyLabel.text = String(udId)
        
        //貯金合計額表示
        let ud2 = NSUserDefaults.standardUserDefaults()
        let udId2 : AnyObject! = ud2.objectForKey("SavingMoneyUpdate")
        SavingsMoneyLabel.text = String(udId2)
        
        //目標表示
        let ud3 = NSUserDefaults.standardUserDefaults()
        let udId3 : AnyObject! = ud3.objectForKey("GoalUpdate")
        GoalLabel.text = String(udId3)
        
        //DatePickerから目標期限表示
        let ud4 = NSUserDefaults.standardUserDefaults()
        let udId4 : AnyObject! = ud4.objectForKey("DatePicker")
        DeadlineLabel.text = String(udId4)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}