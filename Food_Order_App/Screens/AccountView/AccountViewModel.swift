//
//  AccountViewModel.swift
//  Food_Order_App
//
//  Created by عامر خان on 23/11/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = ALertContext.userSaveSuccess
        } catch {
            alertItem = ALertContext.invalidUserData
        }
    }
    
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch{
            alertItem = ALertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = ALertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = ALertContext.invalidEmail
            return false
        }
        return true
    }
}
