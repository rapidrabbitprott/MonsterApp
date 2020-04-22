//
//  Uribo.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/22.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//

import Foundation
class Uribo: Monster {
    
    init() {
        super.init(name:"ウリボー",hp:15,ap:7,dp:7,sp:4)
    }
    //Q3:Uriboクラスの関数に引数/返り値を設けてみよう
    func bite(enemy:Monster)->(damage:Int,text:String){
        let damage = self.attackPoint + 6 - enemy.defencePoint
        let text = "ウリボーの攻撃\nウリボーは敵に噛み付いた.\n" + String(damage) + "のダメージを与えた."
        return (damage,text)
    }
    func eat()-> (recovery:Int,text:String){
        let recovery = 2
        let text = "ウリボーの回復\nウリボーは木のみを食べた.\n" + String(recovery) + "のHPを回復した."
        return (recovery,text)
    }
}
