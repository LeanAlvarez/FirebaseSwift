//
//  CardView.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("juego")
                .aspectRatio(contentMode: .fit)
            Text("Company of Heroes 3")
                .font(.title)
                .bold()
                .foregroundColor(.black)
        }.padding()
            .background(Color.white)
            .cornerRadius(20)
    }
}

#Preview {
    CardView()
}
