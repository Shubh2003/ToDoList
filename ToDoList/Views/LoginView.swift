//
//  LoginView.swift
//  ToDoList
//
//  Created by Admin on 20/08/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                //LoginForm
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        viewModel.login()
                    }
                    .padding()
                    
                    
                    
                }
                .offset(y: -50)
                
                //Create Account
                
                VStack{
                    Text("New Around here?")
                    
                    NavigationLink("Create an Account",destination: RegisterView())
                }
                .padding(.bottom,50)
                
                Spacer()
            }
        }
    }
    
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
