//
//  ViewController.swift
//  BMICalculator
//
//  Created by Muammer on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var height = 1.5
    var weight = 100
    var result = 0.0
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSlided(_ sender: UISlider) {
        height = Double(sender.value)
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlided(_ sender: UISlider) {
        weight = Int(sender.value)
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        result = calculatorBrain.calculateBMI(height: height, weight: weight)
        print(result)
        
        performSegue(withIdentifier: "toResultVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = self.result
            destinationVC.message = calculatorBrain.chooseMessage(result: result)
            destinationVC.view.backgroundColor = calculatorBrain.chooseBackgroundColor(result: result)
        }
    }
}
