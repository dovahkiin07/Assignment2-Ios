//
//  TableVC.swift
//  Assign2
//
//  Copyright © 2020 Lynxml. All rights reserved.
//

import Foundation
import UIKit

class TableVC: UITableViewController
{
    
    var cell: TableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. registered the cell
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
    }
    
    //2. specify what row the cell will go
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //3. create the cell and add to the table based on index
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = "Label"
        
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 1 {
            return 4
        }
        
        if section == 2 {
            return 1
        } else {
                 return 8
        }
  
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row > 2 {
     //       present(CollectionVC(collectionViewLayout: UICollectionViewFlowLayout()), animated: true, completion: nil)
            
            navigationController?.pushViewController(CollectionVC(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
        }
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Title"
    }

}
