//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Admin on 20/08/23.
//


import FirebaseAuth
import Foundation


class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        //Login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
   private func validate() -> Bool{
       guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
             !password.trimmingCharacters(in: .whitespaces).isEmpty else{
           errorMessage = "Please fill in all the details"
           return false
       }
        
       guard email.contains("@") && email.contains(".") else{
           errorMessage = "Please enter valid email."
           return false
       }
       return true
    }
}
