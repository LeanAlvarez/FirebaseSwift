//
//  FirebaseSwiftApp.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import SwiftUI

@main
struct FirebaseSwiftApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    var body: some Scene {
        
        let login = FirebaseViewModel()
        
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
