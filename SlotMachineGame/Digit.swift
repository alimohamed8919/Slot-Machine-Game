//
//  Digit.swift
//  SlotMachineGame
//
//  Created by Ali Mohamed on 10/20/17.
//  Copyright © 2017 Ali Mohamed. All rights reserved.
//

import UIKit
import Foundation

struct Digit {
        
    private var colors: [UIColor] = [UIColor.green, UIColor.blue, UIColor.red, UIColor.purple]
    var digit: Int32 = 0
    var color: UIColor?
    
    
    mutating func pickDigit() -> Int32 {
        return Int32(arc4random_uniform(10))
    }
    
    func getDigit() -> Int32{
        return digit
    }

    mutating func pickColor() -> UIColor {
        return colors[Int(arc4random_uniform(4))]
    }
    
    func getColor() ->UIColor {
        return color!
    }
    
    mutating func spinDigit() {
        digit = pickDigit()
        color = pickColor()
    }
}
