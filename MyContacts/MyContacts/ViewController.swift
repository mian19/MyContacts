//
//  ViewController.swift
//  MyContacts
//
//  Created by Kyzu on 6.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {

    private func updateCell( cell: inout UITableViewCell, for indexPath: IndexPath ) {
        var conf = cell.defaultContentConfiguration()
        conf.text = "Raw #\(indexPath.row)"
        cell.contentConfiguration = conf
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var returnCell: UITableViewCell
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myID") {
            print("Old \(indexPath.row)")
           returnCell = cell
        } else {
            returnCell = UITableViewCell(style: .default, reuseIdentifier: "myID")
            print("New \(indexPath.row)")
        }
        
        updateCell(cell: &returnCell, for: indexPath)
        
        return returnCell
    }
    
    
}
    
    

