//
//  ViewController.swift
//  Todoey HW
//
//  Created by Oz Arie Tal Shachar on 13.2.2018.
//  Copyright © 2018 Oz Arie Tal Shachar. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["find", "make", "do"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    //MARK: Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK: Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row: \(indexPath.row), \(itemArray[indexPath.row])")
        
        //add or clear the checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //colorize the selected row
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    
    
    
    

}

