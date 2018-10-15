//
//  SlotMachineGame.swift
//  SlotMachineGame
//
//  Created by Ali Mohamed on 10/23/17.
//  Copyright © 2017 Ali Mohamed. All rights reserved.
//

import Foundation

struct SlotMachineGame {
    
    var currentScore = 100
    var numberOfDigits: Int
    var digits = [Digit?](repeatElement(nil, count: 5))
    var digit = Digit()
    var equalDigits = false
    var equalColors = false
    var scoreCounter = ""
    
    
    init(_ numberOfDigits : Int) {
        self.numberOfDigits = numberOfDigits
    }
    
    mutating func resetGame() {
        currentScore = 100
    }
    
    func getScoreCounter() -> String {
        return scoreCounter
    }
    
    func getScore() -> Int {
        return currentScore
    }
    
    func getDigits() -> [Digit] {
        return self.digits as! [Digit]
    }
    
    mutating func spinDigits() {
        scoreCounter = "-2"
        currentScore -= 2
        for i: Int in 0..<numberOfDigits {
            digit.spinDigit()
            digits[i] = digit
        }
        //scoreComputing()
    }
    
    
    mutating func areColorsEqual() -> Bool {
        
        for i: Int in 0..<numberOfDigits-1 {
            
            if digits[i]!.getColor() == digits[i+1]!.getColor() {
                equalColors = true
                
            }else {
                equalColors = false
                break
            }
        }
        return equalColors
    }
    
    mutating func areDigitsEqual() -> Bool {
        
        for i: Int in 0..<numberOfDigits-1 {
            
            if digits[i]!.getDigit() == digits[i+1]!.getDigit() {
                equalDigits = true
                
            }else {
                equalDigits = false
                break
            }
        }
        return equalDigits
    }
    
    mutating func scoreComputing() {
        
        if areColorsEqual() == true && areDigitsEqual() == true {
            //print("everything yes")
            if numberOfDigits == 5 {
                currentScore += 500
                scoreCounter = "+500"
            }else {
                currentScore += 300
                scoreCounter = "+300"
            }
            
        }else if areColorsEqual() == true {
            //print("color yes")
            if numberOfDigits == 5 {
                currentScore += 125
                scoreCounter = "+125"
            }else {
                currentScore += 75
                scoreCounter = "+75"
            }
            
        }else if areDigitsEqual() == true {
            //print("text yes")
            if numberOfDigits == 5 {
                currentScore += 250
                scoreCounter = "+250"
            }else {
                currentScore += 150
                scoreCounter = "+150"
            }
            
        }
    }
    
    
    
    
}
