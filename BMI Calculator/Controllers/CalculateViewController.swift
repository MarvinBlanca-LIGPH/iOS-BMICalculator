//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculateBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initView()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightText = calculateBrain.heightSliderChange(sender.value)
        heightLabel.text = "\(heightText)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightText = calculateBrain.weightSliderChange(sender.value)
        weightLabel.text = "\(weightText)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBrain.calculateBMI(heightSlider.value, weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.uiColor = calculateBrain.getColor()
        }
    }
    
    func initView() {
        heightSlider.value = 1.5
        weightSlider.value = 100
    }
}

