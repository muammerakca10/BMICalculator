//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Muammer on 30.01.2023.
//

import Foundation
import UIKit

struct CalculatorBrain {
    func calculateBMI(height : Double, weight : Int) -> Double {
        return Double(weight) / pow(height, 2)
    }
    
    func chooseMessage(result : Double) -> String {
        if result < 18 {
            return "You're Weak"
        } else if  result >= 18 && result < 25 {
            return "You're Healthy"
        } else {
            return "You're Obese"
        }
    }
    
    func chooseBackgroundColor (result : Double) -> UIColor {
        if result < 18 {
            return UIColor.red
        } else if  result >= 18 && result < 25 {
            return UIColor.green
        } else {
            return UIColor.red
        }
    }
}
