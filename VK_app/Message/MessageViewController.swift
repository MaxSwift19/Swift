//
//  MessageViewController.swift
//  VK_app
//
//  Created by User on 23/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class MessageViewController: UITableViewController {
    
    var messageArray = ["VeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongText", "Short text Short text Short text Short text Short text Short text", "VeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongTextVeryLongText", "Short text Short text Short text Short text Short text Short text"]
    
    override func viewDidLoad() {
        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "SimpleMessage" )
        
        tableView.estimatedRowHeight = 100.0
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleMessage", for: indexPath) as? MessageCell
        cell?.message.text = messageArray[indexPath.row]
        return cell!
    }
}
