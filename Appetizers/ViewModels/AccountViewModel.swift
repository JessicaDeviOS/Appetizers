//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/12/22.
//

import Foundation

// TODO: maybe put ViewModels with their Views in one folder? 
class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
}
