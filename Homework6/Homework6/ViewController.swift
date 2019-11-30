//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var conditonOne: Bool = false
    var conditionTwo: Bool = true
    var conditionThree: Bool = false
    

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    func checkAllConditions(){
        if conditonOne && conditionTwo && conditionThree {
            continueButton.isEnabled = true
        }
    }
    
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 1 {
        conditonOne = true
        } else{
            conditonOne = false
        }
        
        checkAllConditions()
        
    }

    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        if sender.isOn {
            
            conditionTwo = true
        } else {
            conditionTwo = false
        }
        
        checkAllConditions()
        
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        
        conditionThree = true
        
        checkAllConditions()
        
    }

}
