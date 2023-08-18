//
//  ViewController.swift
//  Tipsy
//
//  Created by Evgenii Mazrukho on 18.08.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var result = Double()
    var tip = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        sender.isSelected = true
        if sender == zeroPercentButton {
            tenPercentButton.isSelected = false
            twentyPercentButton.isSelected = false
        } else if sender == tenPercentButton {
            zeroPercentButton.isSelected = false
            twentyPercentButton.isSelected = false
        } else {
            zeroPercentButton.isSelected = false
            tenPercentButton.isSelected = false
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let textField = billTextField.text, !textField.isEmpty else { return }
        guard let splitNumber = splitNumberLabel.text, !splitNumber.isEmpty else { return }
        if zeroPercentButton.isSelected {
            result = Double(textField)! / Double(splitNumber)!
        } else if tenPercentButton.isSelected {
            result = Double(textField)! / Double(splitNumber)!
            tip = result * 0.1
            result += tip
        } else {
            result = Double(textField)! / Double(splitNumber)!
            tip = result * 0.2
            result += tip
        }
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = String(format: "%.2f", result)
            destinationVC.tip = Int(tip)
            destinationVC.numberOfPeople = Int(splitNumberLabel.text!)!
        }
    }
}

