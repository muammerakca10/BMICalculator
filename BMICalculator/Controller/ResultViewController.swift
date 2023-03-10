//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Muammer on 30.01.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    var result = 0.0
    var message = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "\(String(format: "%.1f", result))"
        messageLabel.text = message
    }
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
