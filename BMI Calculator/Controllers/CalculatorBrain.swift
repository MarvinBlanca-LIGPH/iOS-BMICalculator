//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mark Marvin Blanca on 3/5/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func heightSliderChange(_ value: Float) -> String {
        return String(format: "%.2f", value)
    }
    
    func weightSliderChange(_ value: Float) -> String {
        return String(Int(value))
    }
    
    func getBMIValue() -> String {
        let formatFloat = String(format: "%.2f", bmi?.value ?? 0.0)
        return formatFloat
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
    }
    
    mutating func calculateBMI(_ height: Float,_ weight: Float) {
        let bmiValue = weight / (pow( height, 2))
        if bmiValue < 18.45 {
            bmi = BMI(value: bmiValue, advice: "Eat more rice", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less rice", color: #colorLiteral(red: 0.6624035239, green: 0, blue: 0.08404419571, alpha: 1))
        }
    }
}
