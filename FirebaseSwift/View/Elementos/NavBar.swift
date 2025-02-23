//
//  NavBar.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

struct NavBar: View {
    var device = UIDevice.current.userInterfaceIdiom
    @Binding var index: String
    @Binding var menu: Bool
    
    var body: some View {
        HStack{
            Text("Games")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: device == .phone ? 25 : 35))
            Spacer()
            if device == .pad {
                 //menu ipad
                
                HStack(spacing: 25){
                    ButtonView(index: $index, menu: $menu, title: "PlayStation")
                    ButtonView(index: $index, menu: $menu, title: "Xbox")
                    ButtonView(index: $index, menu: $menu, title: "Nintendo")
                }
                
                
            }else{
                //menu iphone
                Button(action: {
                    withAnimation{
                        menu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                }
            }
            
        }.padding(.top, 30)
        .padding()
            .background(Color.purple)
    }
}
