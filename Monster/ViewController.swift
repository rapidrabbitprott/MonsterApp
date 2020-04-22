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
        hiyoko.showStatus(nameLabel: hiyokoNameLabel, hpLabel: hiyokoHPLabel, apLabel: hiyokoAPLabel, dpLabel: hiyokoDPLabel, spLabel: hiyokoSPLabel)
        uribo.showStatus(nameLabel: uriboNameLabel, hpLabel: uriboHPLabel, apLabel: uriboAPLabel, dpLabel: uriboDPLabel, spLabel: uriboSPLabel)
    }
    
    @IBAction func attack(){
        //uribo.hitPoint = uribo.hitPoint - hiyoko.poke(enemy:uribo).damageを簡略に記述したもの
        uribo.hitPoint -= hiyoko.poke(enemy: uribo).damage
        //返り値を2つ持つ関数では、関数を使用した後に.で返り値を1つ指定できる
        actionTextView.text = hiyoko.poke(enemy: uribo).text
        //HPが変化したのをLabelに反映させる
        viewDidLoad()
    }
    
    @IBAction func recover(){
        hiyoko.hitPoint += hiyoko.sleep().recovery
        actionTextView.text = hiyoko.sleep().text
        //HPが変化したのをLabelに反映させる
        viewDidLoad()
    }


}

