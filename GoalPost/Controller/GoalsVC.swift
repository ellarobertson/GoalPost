//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Ella Robertson on 7/14/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false;
    }

    @IBAction func addViewBttnWasPressed(_ sender: Any) {
    }
    

}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell()}
        cell.configureCell(description: "eat salad", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}

