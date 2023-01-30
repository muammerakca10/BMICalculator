//
//  ViewController.swift
//  BMICalculator
//
//  Created by Muammer on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var height : Double?
    var weight : Int?
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSlided(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlided(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
        
        
    }
}

