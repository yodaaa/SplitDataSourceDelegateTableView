//
//  TableViewController.swift
//  SplitDataSourceTableView
//
//  Created by yodaaa on 2019/01/07.
//  Copyright © 2019 yodaaa. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    //tableview xib
    let tableView = UINib(nibName: "TableView", bundle: nil).instantiate(withOwner: self, options: nil).first as! UITableView
    
    //tableViewDataSourceDelegateのインスタンス
    var tableViewDataSourceDelegate: TableViewDataSourceDelegateController = TableViewDataSourceDelegateController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cellの登録
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tableViewCell")
        
        // tableviewのdelegateとdatasourceをtableViewDataSourceDelegateにの委譲
        tableView.delegate = tableViewDataSourceDelegate
        tableView.dataSource = tableViewDataSourceDelegate
        
        //uiviewにtableviewを追加
        self.view.addSubview(tableView)
    }
}
