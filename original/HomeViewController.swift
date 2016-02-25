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
    
    //目標額
    @IBOutlet weak var MoneyLabel: UILabel!
    
    //貯金額合計
    @IBOutlet weak var SavingsMoneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // myTextFieldのデリゲートになる
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let ud = NSUserDefaults.standardUserDefaults()
        let udId : AnyObject! = ud.objectForKey("MoneyUpdate")
        let ud2 = NSUserDefaults.standardUserDefaults()
        let udId2 : AnyObject! = ud2.objectForKey("SavingMoneyUpdate")
        let ud3 = NSUserDefaults.standardUserDefaults()
        let udId3 : AnyObject! = ud3.objectForKey("GoalUpdate")
        MoneyLabel.text = String(udId)
        SavingsMoneyLabel.text = String(udId2)
        GoalLabel.text = String(udId3)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}