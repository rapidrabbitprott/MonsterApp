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
    func poke(enemy:Monster)->(damage:Int,text:String){
        //HiyokoはMonsterクラスの値を継承しているので，self.attackPointで自身の攻撃力の値を取得できる
        let damage = self.attackPoint + 3 - enemy.defencePoint
        //\はoption+¥で出すことができる。改行を表す
        let text = "ひよこの攻撃\nひよこは" + enemy.monsterName + "を突ついた\n" + String(damage) + "のダメージを与えた"
        return (damage,text)
    }
    //写経⑤:Hiyokoクラスの関数に引数/返り値を設定
    func sleep()-> (recovery:Int,text:String){
        let recovery = 4
        let text = "ひよこの回復\nひよこは眠りに入った.\n" + String(recovery) + "のHPを回復した."
        return (recovery,text)
    }
}
