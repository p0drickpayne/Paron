//
//  ProfilePage.swift
//  Paron
//
//  Created by Jakob Salomonsson on 2020-03-10.
//  Copyright © 2020 Jakob Salomonsson. All rights reserved.
//

import SwiftUI

struct ProfilePage: View {
    //let loginScreen: LoginScreen
    
    var name = ""
    var email: String
    
    var body: some View {
        
        VStack (alignment: .center){
            Text(email)
            
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage(email: "tjo@gmail.nu")
    }
}
