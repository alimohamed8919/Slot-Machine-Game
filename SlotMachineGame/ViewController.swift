//
//  ViewController.swift
//  SlotMachineGame
//
//  Created by Ali Mohamed on 10/19/17.
//  Copyright © 2017 Ali Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var slotMachine = SlotMachineGame(3)
    var history = NSMutableAttributedString()
    var index = 1
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet var displays: [UILabel]!
   
    @IBOutlet weak var scoreCounter: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let historyVC: HistoryViewController = segue.destination as! HistoryViewController
        
        historyVC.history = history
    }
    
    @IBAction func spin(_ sender: UIButton) {
        
        
        if slotMachine.getScore() >= 2 {
            history.append(NSMutableAttributedString(string: "\(index). "))
            spinning()
            scoreUpdate()
            history.append(NSMutableAttributedString(string: "\n"))
            index += 1
            
            
        }else {
            sender.isEnabled = false
        }
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        slotMachine.resetGame()
        score.text = "\(slotMachine.getScore())"
        scoreCounter.text = "0"
        scoreCounter.textColor = UIColor.white
        history = NSMutableAttributedString()
        index = 1
        
    }
    
    func scoreUpdate() {
        score.text = "\(slotMachine.getScore())"
        slotMachine.scoreComputing()
        
        if slotMachine.getScoreCounter() == "-2" {
            scoreCounter.text = slotMachine.getScoreCounter()
            scoreCounter.textColor = UIColor.red
        }else {
            scoreCounter.text = slotMachine.getScoreCounter()
            scoreCounter.textColor = UIColor.green
        }
        
    }
    
    func spinning() {
        slotMachine.spinDigits()
        for i: Int in 0..<3 {
            displays[i].text = "\(slotMachine.digits[i]!.getDigit())"
            displays[i].textColor = slotMachine.digits[i]!.getColor()
            history.append(displays[i].attributedText!)
        }
    }
    
    
}

