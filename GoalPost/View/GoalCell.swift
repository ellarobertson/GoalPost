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
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(goal.goalProgress)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
