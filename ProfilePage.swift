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
    @EnvironmentObject var session: SessionStore
    
    func getUser() {
        session.listen()
    }
    
    //var name = ""
    //var email: String
    
    var body: some View {
        Group {
            if (session.session != nil){
                Text("Welcome back user")
                Button(action: session.signOut) {
                    Text("Sign Out")
                }
            } else {
                LoginScreen()
            }
            
        }.onAppear(perform: getUser)
    }
}
#if DEBUG
struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        //ProfilePage(email: "tjo@gmail.nu")
        ProfilePage().environmentObject(SessionStore())
    }
}
#endif
