//
//  TableViewController.swift
//  HBO_Now
//
//  Created by Gayani Madubhashini on 2/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
     var people: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // register the cell
        title = "Name List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        people.append("Kamal")
        tableView.reloadData()
    }
    
    @IBAction func addName(_ sender: Any) {
        
        //alert ref
        let alert = UIAlertController(title: "New Name", message: "Add a new name", preferredStyle: .alert)
        
        let  saveAction  = UIAlertAction(title: "Save", style: .default) {[unowned self] action in
            guard let textField = alert.textFields?.first, let nameToSave = textField.text
            
                else{
                    return
            }
            self.people.append(nameToSave)
            self.tableView.reloadData()
        }
        
        alert.addTextField()
        alert.addAction(saveAction)
        present(alert, animated: true)
    }
}
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = people[indexPath.row]
        
        return cell
  }
}
