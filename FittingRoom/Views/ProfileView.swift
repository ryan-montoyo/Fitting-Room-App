//
//  ProfileView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user {
                    // avatar
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 125, height: 125)
                        .padding()
                    
                    //info: name, email, member since
                    VStack (alignment:.leading){
                        HStack{
                            Text("Name:")
                                .bold()
                            Text(user.first_name)
                            Text(user.last_name)
                        }
                        .padding()
                        HStack{
                            Text("Email:")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack{
                            Text("Member Since:")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                    }
                    .padding()
                    
                    // sign out
                    Button("Log Out"){
                        viewModel.logOut()
                    }
                    .tint(.red)
                    .padding()
                    
                    Spacer()
                }
                else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetch()
        }
    }
}

#Preview {
    ProfileView()
}
