//
//  Monster.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/21.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//

import Foundation
//UIKitをimportしてUILabelを使用可能にする
import UIKit

class Monster{
    //モンスターに必要な変数
    var monsterName: String
    var hitPoint: Int
    var attackPoint: Int
    var defencePoint: Int
    var speedPoint: Int
    
    //インスタンス生成時(設計図から実体を作った時)の初期値
    init(name:String,hp:Int,ap:Int,dp:Int,sp:Int) {
        monsterName = name
        hitPoint = hp
        attackPoint = ap
        defencePoint = dp
        speedPoint = sp
    }
    
    //写経④:showStatus関数でストーリーボードに表示できるようにしよう
    func showStatus(nameLabel:UILabel,hpLabel:UILabel,apLabel:UILabel,dpLabel:UILabel,spLabel:UILabel) {
        nameLabel.text = monsterName
        hpLabel.text = "HP:" + String(hitPoint)
        apLabel.text = "AP:" + String(attackPoint)
        dpLabel.text = "DP:" + String(defencePoint)
        spLabel.text = "SP:" + String(speedPoint)
    }
    
    
}

