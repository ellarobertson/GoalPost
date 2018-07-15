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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func nextBttnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermBttnWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBttnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBttnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
