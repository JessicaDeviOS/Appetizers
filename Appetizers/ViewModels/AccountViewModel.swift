//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/12/22.
//

import SwiftUI

// TODO: maybe put ViewModels with their Views in one folder?
class AccountViewModel: ObservableObject {
    @AppStorage("user") private var userData: Data? // will save to UserDefaults with key "user" when set
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
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData = userData else {
            return
        }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
