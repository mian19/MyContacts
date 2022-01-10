//
//  ViewController.swift
//  MyContacts
//
//  Created by Kyzu on 6.01.22.
//

import UIKit

class ViewController: UIViewController {

    private var contacts = [ContactProtocol]()
    
    private func loadContacts() {
        contacts.append(Contact(title: "Саня Техосмотр", phone: "+375443212331"))
        contacts.append(Contact(title: "Владимир Анатольевич", phone: "+375299903284"))
        contacts.append(Contact(title: "Питер", phone: "+375336584401"))
        contacts.sort{ $0.title < $1.title}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadContacts()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {

    private func updateCell( cell: inout UITableViewCell, for indexPath: IndexPath ) {
        var conf = cell.defaultContentConfiguration()
        conf.text = contacts[indexPath.row].title
        conf.secondaryText = contacts[indexPath.row].phone
        cell.contentConfiguration = conf
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
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
    
    

