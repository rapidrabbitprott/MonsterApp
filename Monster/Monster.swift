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
    
    //Q4:Monsterクラスにattack関数/recovery関数を記述し、poke関数とbite関数，sleep関数とeat関数の共通処理を簡略化せよ
    func attack(enemy:Monster,power:Int,action:String)-> (damage:Int,text:String){
        //HiyokoはMonsterクラスの値を継承しているので，self.attackPointで自身の攻撃力の値を取得できる
        let damage = self.attackPoint + power - enemy.defencePoint
        let text = self.monsterName + "の" + action + "攻撃\n" + enemy.monsterName + "に" + String(damage) + "のダメージを与えた"
        return (damage,text)
    }
    
    func recover(ourParty:Monster,power:Int,action:String)-> (recovery:Int,text:String){
        let recovery = power
        let text = self.monsterName + "の回復\n" + ourParty.monsterName + "は" + action + "\n" + String(recovery) + "のHPを回復した."
        return (recovery,text)
    }
}

