//
//  BackgroundView.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        HStack{
            Image(systemName: "tshirt")
                .foregroundColor(.gray)
                .rotationEffect(.degrees(15))
                .opacity(0.5)
            Image(systemName: "tshirt")
                .foregroundColor(.gray)
                .rotationEffect(.degrees(15))
                .opacity(0.5)
        }
    }
}

#Preview {
    BackgroundView()
}
