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
        super.init(name:"ひよこ",hp:7,ap:10,dp:4,sp:7)
    }
    //写経⑤:Hiyokoクラスの関数に引数/返り値を設定
    func poke(){
        let damage = 3
        let text = "ひよこの攻撃:ひよこは敵を突ついた." + String(damage) + "のダメージを与えた."
        print(text)
    }
    //写経⑤:Hiyokoクラスの関数に引数/返り値を設定
    func sleep(){
        let recovery = 4
        let text = "ひよこの回復:ひよこは眠りに入った." + String(recovery) + "のHPを回復した."
        print(text)
    }
}
