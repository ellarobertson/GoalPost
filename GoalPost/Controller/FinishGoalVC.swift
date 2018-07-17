//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Ella Robertson on 7/16/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    //Outlets
    @IBOutlet weak var createGoalBttn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    //Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBttn.bindToKeyboard()
        pointsTxtField.delegate = self
    }
    
    func initData(description: String, type: GoalType){
        self.goalDescription = description
        self.goalType = type
        
    }

    @IBAction func createGoalBttnWasPressed(_ sender: Any) {
        //Pass data into core data goal model
    }
    
}
