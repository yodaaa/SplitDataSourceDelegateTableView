//
//  ViewController.swift
//  SplitDataSourceTableView
//
//  Created by yodaaa on 2019/01/07.
//  Copyright © 2019 yodaaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let tableView = UINib(nibName: "View", bundle: nil).instantiate(withOwner: self, options: nil).first as! UITableView

    var tableViewDataSourceDelegate: TableViewDataSourceDelegateController = TableViewDataSourceDelegateController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "tableViewCell", bundle: nil), forCellReuseIdentifier: "tableViewCell")
        
        tableView.delegate = tableViewDataSourceDelegate
        tableView.dataSource = tableViewDataSourceDelegate
        
        self.view.addSubview(tableView)
    }
    

}
