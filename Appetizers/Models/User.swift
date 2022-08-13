//
//  User.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/13/22.
//

import Foundation

// when storaging a custom object in UserDefauls need to convert it to data first, so that's why we conform to Codable
struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false

    
}
