//
//  ButtonView.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var index: String
    @Binding var menu: Bool
    var device = UIDevice.current.userInterfaceIdiom
    var title: String
    
    
    var body: some View {
        Button(action:{
            withAnimation{
                index = title
                if device == .phone {
                    menu.toggle()
                }
            }
        }){
            Text(title)
                .font(.title)
                .fontWeight(index == title ? .bold : .none)
                .foregroundColor(index == title ? .white : Color.white.opacity(0.6))
        }
    }
}

