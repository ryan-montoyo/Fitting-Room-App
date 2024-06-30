//
//  FittingRoomApp.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI
import FirebaseCore

@main
struct FittingRoomApp: App {
    init() {
            FirebaseApp.configure()
        }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
