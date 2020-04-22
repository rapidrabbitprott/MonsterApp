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
    func bite(){
        let damage = 6
        let text = "ウリボーの攻撃:ウリボーは敵に噛み付いた." + String(damage) + "のダメージを与えた."
        print(text)
    }
    func eat(){
        let recovery = 2
        let text = "ウリボーの回復:ウリボーは木のみを食べた." + String(recovery) + "のHPを回復した."
        print(text)
    }
}
