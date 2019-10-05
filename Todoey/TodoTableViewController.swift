//
//  ViewController.swift
//  Todoey
//
//  Created by Jan Szymański on 5.10.19.
//  Copyright © 2019 Jan Szymański. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var itemArray = ["walk the dog", "cook dinner", "fill up gas tank"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
