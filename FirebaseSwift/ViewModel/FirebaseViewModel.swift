//
//  FirebaseViewModel.swift
//  FirebaseSwift
//
//  Created by Lean on 03/07/2024.
//

import Foundation
import Firebase


class FirebaseViewModel: ObservableObject{
    
    @Published var show = false
    
    
    func login(email: String, password: String, completion: @escaping(_ done: Bool) -> Void){
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if user != nil {
                print("entro toda")
                completion(true)
            }else {
                if let error = error?.localizedDescription{
                    print("Error en firebase", error)
                }else{
                    print("Error en la app")
                }
            }
        }
    }
    
}
