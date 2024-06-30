//
//  LogoView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Circle()
                .tint(.black)
            VStack {
                Image(systemName: "hanger")
                    .foregroundColor(.white)
                Text("Fitting Room")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    LogoView()
}
