//
//  LoginViewViewModel.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//


import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
       
    }
    
    
    func login() {
        guard validate() else {
            return
        }
        
        //try to login
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Plese fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        return true
    }
    
}
