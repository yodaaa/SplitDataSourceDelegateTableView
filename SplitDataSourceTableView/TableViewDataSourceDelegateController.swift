//
//  TableViewDataSourceDelegateViewController.swift
//  SplitDataSourceTableView
//
//  Created by yodaaa on 2019/01/07.
//  Copyright © 2019 yodaaa. All rights reserved.
//

import UIKit

typealias UITableViewDD = UITableViewDelegate & UITableViewDataSource

class TableViewDataSourceDelegateController: NSObject, UITableViewDD {

    
    var tableData: [[String]] = [
        ["a", "b", "c"],
        ["d", "e"],
        ["f"],
        ["g", "h", "i", "j", "k"],
    ]
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    func numberOfSections(in tableView: UITableView) -> Int { // sectionの数を決める
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)

        cell.textLabel?.text = tableData[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt: \(indexPath)")
        
        // タップ後すぐ非選択状態にするには下記メソッドを呼び出します．
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
    
    
    
   

}
