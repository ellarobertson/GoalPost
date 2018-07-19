//
//  GoalCell.swift
//  GoalPost
//
//  Created by Ella Robertson on 7/15/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    
    @IBOutlet weak var goalTypeLbl: UILabel!
    
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
