//
//  ResultViewController.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/23.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//
//Q6
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel:UILabel!
    var passedResult = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = passedResult
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        // ①storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        // ②遷移先ViewControllerのインスタンス取得
        let nextView = storyboard.instantiateViewController(withIdentifier: "playStoryboard") as! ViewController
        // ③画面遷移
        self.present(nextView, animated: true, completion: nil)
    }
    
}
