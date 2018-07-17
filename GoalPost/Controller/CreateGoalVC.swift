//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Ella Robertson on 7/15/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

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
        goalTextView.delegate = self
    }
    
    
    @IBAction func nextBttnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else {return}
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
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
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = "";
        goalTextView.textColor = UIColor.black;
    }
    
}
