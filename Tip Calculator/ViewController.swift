//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Yifei Ning on 12/30/18.
//  Copyright © 2018 Yifei Ning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var numPpl: UITextField!
    @IBOutlet weak var totalAfterSplit: UILabel!
    @IBOutlet weak var totalBeforeSplit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
    }


    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    

//    @IBAction func split(_ sender: Any) {
////        let one = Double(totalLabel.text!) ?? 0
//        let total = Double(totalBeforeSplit.text!) ?? 100
//        let num = Double(numPpl.text!) ?? 1
//        let totalThen = total / num
//
//        totalAfterSplit.text = String(format: "$%.2f", totalThen)
//    }
//
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipRate = [0.15, 0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipRate[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalBeforeSplit.text = totalLabel.text
    }
    
    
}

