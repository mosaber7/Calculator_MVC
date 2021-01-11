//
//  ViewController.swift
//  Calculator
//
//  Created by Saber on 11/01/2021.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var screenLabel: UILabel!
    var calculator = CalculatorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberTapped(_ sender: UIButton) {
        screenLabel.text = calculator.numberButtonTapped(sender.currentTitle!)
    }
    
    @IBAction func mathOperatorTapped(_ sender: UIButton) {
        screenLabel.text = calculator.mathOperationButtonTapped(sender.currentTitle!)
    }
    @IBAction func clearAllTapped(_ sender: UIButton) {
        screenLabel.text = calculator.clearAll()
    }
    @IBAction func equllTapped(_ sender: UIButton) {
        screenLabel.text = calculator.equalButtonTapped()
    }
    
}


