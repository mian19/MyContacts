//
//  Contact.swift
//  MyContacts
//
//  Created by Kyzu on 10.01.22.
//

import Foundation

protocol ContactProtocol {
    var title: String {get set}
    var phone: String {get set}
}


struct Contact: ContactProtocol {
    var title: String
    
    var phone: String
    
}
