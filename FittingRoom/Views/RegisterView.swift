//
//  RegisterView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI



struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()

    
    var body: some View {
        NavigationView{
            VStack{
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                HStack{
                    VStack{ //first name
                        TextField("First Name", text: $viewModel.first_name)
                            .padding()
                            .frame(width: 140, height: 50)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(10)
                            .autocorrectionDisabled()
                    }
                    .padding(5)
                    
                    VStack{ //last name
                        TextField("Last Name", text: $viewModel.last_name)
                            .padding()
                            .frame(width: 140, height: 50)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(10)
                            .autocorrectionDisabled()
                    }
                    .padding(5)
                }

                VStack{ //email
                    TextField("Email Address", text: $viewModel.email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .autocorrectionDisabled()
                }
                .padding(5)

                VStack{ //password
                    SecureField("Password (6+ characters)", text: $viewModel.password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
                .padding(5)
                
                VStack{ //sign up button
                    Button("Sign Up") {
                        viewModel.register()
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(5)
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
