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
    var result = ""
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
    
    @IBOutlet var attackButton:UIButton!
    @IBOutlet var recoverButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //写経④:showStatus関数でストーリーボードに表示できるようにしよう
        hiyoko.showStatus(nameLabel: hiyokoNameLabel, hpLabel: hiyokoHPLabel, apLabel: hiyokoAPLabel, dpLabel: hiyokoDPLabel, spLabel: hiyokoSPLabel)
        uribo.showStatus(nameLabel: uriboNameLabel, hpLabel: uriboHPLabel, apLabel: uriboAPLabel, dpLabel: uriboDPLabel, spLabel: uriboSPLabel)
        deathJudge(ourParty: hiyoko, enemy: uribo)
    }
    
    @IBAction func attack(){
        actionTextView.text = hiyoko.poke(enemy: uribo)
        //HPが変化したのをLabelに反映させる
        viewDidLoad()
        attackButton.isEnabled = false
        recoverButton.isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.enemyMove()
        }
        attackButton.isEnabled = true
        recoverButton.isEnabled = true
    }
    
    @IBAction func recover(){
        actionTextView.text = hiyoko.sleep(ourParty: hiyoko)
        //HPが変化したのをLabelに反映させる
        viewDidLoad()
        attackButton.isEnabled = false
        recoverButton.isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.enemyMove()
        }
        attackButton.isEnabled = true
        recoverButton.isEnabled = true
    }
    
    //Q6
    func deathJudge(ourParty:Monster,enemy:Monster){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            if ourParty.hitPoint == 0 {
                self.result = "負け"
                self.performSegue(withIdentifier: "toResult", sender: nil)
            } else if enemy.hitPoint == 0{
                self.result = "勝ち"
                self.performSegue(withIdentifier: "toResult", sender: nil)
            }
        }
        
    }
    
    //Q6
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let nextView = segue.destination as! ResultViewController
            nextView.passedResult = result
        }
    }
    
    //Q7
    func enemyMove(){
        
        let rand = Int.random(in: 0 ... 10)
        if rand > 4 {
            actionTextView.text = uribo.bite(enemy: hiyoko)
            viewDidLoad()
        } else {
            actionTextView.text = uribo.eat(ourParty: uribo)
            viewDidLoad()
        }
    }
    
}

