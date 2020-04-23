//
//  Hiyoko.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/22.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//

import Foundation
class Hiyoko: Monster {
    
    init(){
        //親クラスの初期値を継承し、引数にひよこのステータスを代入
        super.init(name:"ひよこ",hp:14,ap:10,dp:4,sp:7)
    }
    //Q4:Monsterクラスにattack関数/recovery関数を記述し、poke関数とbite関数，sleep関数とeat関数の共通処理を簡略化せよ
    func poke(enemy:Monster, power:Int = 8, action:String="突つく")-> String{
        let text = super.attack(enemy: enemy, power: power, action: action).text
        return text
    }
   
    func sleep(ourParty:Monster,power:Int = 5,action:String="眠りに入った")-> String{
        let text = super.recover(ourParty: ourParty, power: power, action: action).text
        return text
        
    }
}