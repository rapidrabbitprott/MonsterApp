//
//  Monster.swift
//  Monster
//
//  Created by 森川正崇 on 2020/04/21.
//  Copyright © 2020 morikawamasataka. All rights reserved.
//

import Foundation

class Monster{
    //モンスターに必要な変数
    var monsterName: String
    var hitPoint: Int
    var attackPoint: Int
    var defencePoint: Int
    var speedPoint: Int
    
    //インスタンス生成時(設計図から実体を作った時)の初期値
    init() {
        monsterName = "ひよこ"
        hitPoint = 10
        attackPoint = 7
        defencePoint = 4
        speedPoint = 6
    }
    
    //スタータスを表示する関数
    func showStatus() {
        print(monsterName)
        print(hitPoint)
        print(attackPoint)
        print(defencePoint)
        print(speedPoint)
    }
}

