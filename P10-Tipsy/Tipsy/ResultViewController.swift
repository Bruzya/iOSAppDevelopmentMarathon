//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Evgenii Mazrukho on 18.08.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = ""
    var tip = 0
    var numberOfPeople = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(tip)% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
