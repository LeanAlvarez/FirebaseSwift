//
//  ContentView.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var loginShow: FirebaseViewModel
    
    
    
    var body: some View {
        return Group{
            if loginShow.show{
                Home()
                    .edgesIgnoringSafeArea(.all)
                    .preferredColorScheme(.dark)
            }else{
                Login()
            }
        }
    }
}

#Preview {
    ContentView()
}
