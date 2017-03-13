//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Shah, Nisha on 3/12/17.
//  Copyright © 2017 Shah, Nisha. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let default_tip = UserDefaults.standard.value(forKey: "default_tip") as? Int ?? 0
        tipSettingsSegment.selectedSegmentIndex = default_tip
    }

    @IBOutlet weak var tipSettingsSegment: UISegmentedControl!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     
    */
    @IBAction func setDefalutTip(_ sender: Any) {
       UserDefaults.standard.setValue(tipSettingsSegment.selectedSegmentIndex, forKey: "default_tip")
    }
}
