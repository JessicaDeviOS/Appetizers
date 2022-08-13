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
    @Published var alertItem: AlertItem? 
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false 
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("changes will totally be saved")
    }
}
