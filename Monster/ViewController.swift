//
//  ViewController.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/21.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //インスタンス化(設計図から実物を作った)
    var hiyoko = Hiyoko()
    var uribo = Uribo()
    @IBOutlet var hiyokoNameLabel:UILabel!
    @IBOutlet var hiyokoHPLabel:UILabel!
    @IBOutlet var hiyokoAPLabel:UILabel!
    @IBOutlet var hiyokoDPLabel:UILabel!
    @IBOutlet var hiyokoSPLabel:UILabel!
    
    @IBOutlet var uriboNameLabel:UILabel!
    @IBOutlet var uriboHPLabel:UILabel!
    @IBOutlet var uriboAPLabel:UILabel!
    @IBOutlet var uriboDPLabel:UILabel!
    @IBOutlet var uriboSPLabel:UILabel!
    
    @IBOutlet var actionTextView:UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //写経④:showStatus関数でストーリーボードに表示できるようにしよう
    }
    
    @IBAction func attack(){
        
    }
    
    @IBAction func recover(){
        
    }


}

