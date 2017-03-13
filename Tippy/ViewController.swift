//
//  ViewController.swift
//  Tippy
//
//  Created by Shah, Nisha on 3/12/17.
//  Copyright © 2017 Shah, Nisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitCount: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let default_tip = UserDefaults.standard.value(forKey: "default_tip") as? Int ?? 0
        tipControl.selectedSegmentIndex = default_tip
        calculate()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func splitChanged(_ sender: Any) {
        calculate()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        calculate()
    }
    
    func calculate() {
        let tipPercentages = [0.18, 0.2, 0.25];
        let split = Double(splitCount.text!) ?? 1
        var bill = Double(billField.text!) ?? 0
        bill = bill / split
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

