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
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
