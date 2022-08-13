//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/12/22.
//

import Foundation

// TODO: maybe put ViewModels with their Views in one folder? 
class AccountViewModel: ObservableObject {
    @Published var user = User()
    @Published var alertItem: AlertItem? 
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard user.email.isValidEmail else {
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
