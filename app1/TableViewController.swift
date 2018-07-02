//
//  TableViewController.swift
//  app1
//
//  Created by Tina Lee on 2018/6/27.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit
var message = ["message1","message2","message3","message4",]
var messageDesc = ["This is your first email","This is your second email","This is your third email","This is your forth email"]
var myIndex = 0

class TableViewController: UITableViewController {
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return message.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = message[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
}
