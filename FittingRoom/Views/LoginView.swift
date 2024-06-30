//
//  LoginView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//
import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                
                
                Text("Fitting Room")
                    .font(Font.custom("PlaywriteESDeco-Regular", size: 40))
                    .bold()
                    .padding()
            
                
                VStack { // Email
                    TextField("Email", text: $viewModel.email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                }
                .padding(5)
                
                VStack { // Password
                    SecureField("Password", text: $viewModel.password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                }
                .padding(5)
                
                if !viewModel.errorMessage.isEmpty {
                    HStack {
                        Image(systemName: "exclamationmark.circle")
                            .foregroundColor(.red)
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    .padding(5)
                }
                
                VStack{ // Login Button
                    Button("Login") {
                        viewModel.login()
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(5)
                
                VStack{ // Sign Up Button
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.top, 20)
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
