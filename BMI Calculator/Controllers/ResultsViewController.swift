//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mark Marvin Blanca on 3/5/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
//    @IBOutlet var viewBackground: UIView!
    
    var bmiValue: String?
    var advice: String?
    var uiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = uiColor
    }   

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
