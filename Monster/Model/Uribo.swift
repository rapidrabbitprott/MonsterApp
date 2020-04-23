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
    //Q4:Monsterクラスにattack関数/recovery関数を記述し、poke関数とbite関数，sleep関数とeat関数の共通処理を簡略化せよ
    func bite(enemy:Monster, power:Int = 6, action:String="噛みつく")-> String{
        let text = super.attack(enemy: enemy, power: power, action: action).text
        return text
    }
    func eat(ourParty:Monster,power:Int = 6,action:String="木のみを食べた")-> String{
        let text = super.recover(ourParty: ourParty, power: power, action: action).text
        return text
    }
} 
