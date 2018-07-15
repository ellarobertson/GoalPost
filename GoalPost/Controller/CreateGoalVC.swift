//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Ella Robertson on 7/15/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    //Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBttn: UIButton!
    @IBOutlet weak var longTermBttn: UIButton!
    @IBOutlet weak var nextBttn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBttn.bindToKeyboard()
        shortTermBttn.setSelectedColor()
        longTermBttn.setDeselectedColor()
    }
    
    
    @IBAction func nextBttnWasPressed(_ sender: Any) {

        
    }
    
    @IBAction func shortTermBttnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBttn.setSelectedColor()
        longTermBttn.setDeselectedColor()
    }
    
    @IBAction func longTermBttnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBttn.setSelectedColor()
        shortTermBttn.setDeselectedColor()
    }
    
    @IBAction func backBttnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
