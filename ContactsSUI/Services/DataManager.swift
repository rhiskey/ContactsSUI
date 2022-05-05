//
//  DataManager.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John", "Sharon", "Aaron", "Steven",
                 "Nicola", "Ted", "Bruce", "Carl", "Allan"]
    
    let surnames = ["Murphy", "Jankin", "Williams", "Black",
                    "Robertson", "Butler", "Isaacson", "Smith", "Pennyworth"]
    
    let phones = ["891234579", "1234567", "555555", "65646456",
                  "876586578", "324234523", "5344536", "646544", "6456543"]
    
    let emails = ["www@gmail.com", "aaa@mail.com", "bbbb@gmail.com",
                  "cccc@mail.com", "ddd@mail.com", "eee@mail.com",
                  "fff@mail.com", "gggg@mail.com", "hhhh@mail.com"]
    
    private init() {}
}
