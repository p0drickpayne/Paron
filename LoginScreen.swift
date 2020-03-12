//
//  LoginScreen.swift
//  Paron
//
//  Created by Jakob Salomonsson on 2020-03-08.
//  Copyright © 2020 Jakob Salomonsson. All rights reserved.
//

import SwiftUI

//Mark: - Properties


    


// Mark: - View

struct LoginScreen: View {
    @State var email: String
    @State var password: String
    @State private var action: Int = 0
    
    var body: some View {
        
        NavigationView{
           
            VStack (alignment: .center, spacing: 10){
                
                
                TextField("enter email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("enter password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                
                NavigationLink(destination: ProfilePage(email: email)) {
                    
                        Text("Log in")
                            //perform some tasks if needed before opening Destination view
                           
                    }
                }
                
            }
        }
        
    }




struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(email: "", password: "")
    }
}
