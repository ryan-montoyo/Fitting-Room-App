//
//  MainView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView{
                FeedView() 
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ClosetView()
                    .tabItem {
                        Image(systemName: "hanger")
                        Text("Closet")
                    }
                AddNewItemView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("New Piece")
                    }
                OutfitCreatorView()
                    .tabItem {
                        Image(systemName: "dice")
                        Text("Generate")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
            }
            .accentColor(.red)
        } else {
            LoginView()

        }
        
    }
}

#Preview {
    MainView()
}
