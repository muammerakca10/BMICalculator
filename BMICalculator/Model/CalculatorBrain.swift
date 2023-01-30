//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Muammer on 30.01.2023.
//

import Foundation

struct CalculatorBrain {
    func calculateBMI(height : Double, weight : Int) -> Double {
        return Double(weight) / pow(height, 2)
    }
}
