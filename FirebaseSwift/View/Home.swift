//
//  Home.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

struct Home: View {
    @State private var index = "PlayStation"
    @State private var menu = false
    @State private var widthMenu = UIScreen.main.bounds.width
    var device = UIDevice.current.userInterfaceIdiom
    @Environment(\.horizontalSizeClass) var width
    
    func getColumns() -> Int{
        return (device == .pad) ? 3 : ((device == .phone && width == .regular) ? 3 : 1)
    }
    
    var body: some View {
        ZStack{
            VStack{
                NavBar(index: $index, menu: $menu)
                ZStack{
                    if index == "PlayStation"{
                        ScrollView(.vertical, showsIndicators: false){
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: getColumns()), spacing: 20){
                                            
                                ForEach(1...9, id: \.self){_ in
                                            CardView()
                                        .padding(.all)
                                    }
                                
                                }
                            }
                        }else if index == "Xbox"{
                            Color.green
                        }else{
                            VStack{
                                Color.red
                            }
                        }
                    }
                }
                // termina navbar ipad
            
            if menu {
                HStack{
                    Spacer()
                    VStack{
                        HStack{
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    menu.toggle()
                                }
                            }){
                                Image(systemName: "xmark")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }.padding()
                            .padding(.top, 50)
                        
                        VStack(alignment: .trailing){
                            ButtonView(index: $index, menu: $menu, title: "PlayStation")
                            ButtonView(index: $index, menu: $menu, title: "Xbox")
                            ButtonView(index: $index, menu: $menu, title: "Nintendo")
                        }
                        Spacer()
                    }.frame(width: widthMenu - 150)
                    .background(Color.purple)
                        
                }
            }
            
            
        }.background(Color.white.opacity(0.9))
        }
    }

#Preview {
    Home()
}
