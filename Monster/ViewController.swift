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
    var monster = Monster()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Monsterクラスの関数を使用
        monster.showStatus()
        // Do any additional setup after loading the view.
    }


}

