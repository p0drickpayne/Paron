//
//  LoginScreen.swift
//  Paron
//
//  Created by Jakob Salomonsson on 2020-03-08.
//  Copyright © 2020 Jakob Salomonsson. All rights reserved.
//

import SwiftUI

//Mark: - Properties


struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore
    
    func signIn() {
        
        session.signIn(email: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""

                NavigationLink(destination: ProfilePage()) {
                    Text("Hello")
                }
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Welcome Back!")
                .font(.custom("rockb", size: 32))
            
            Text("Sign in to continue")
                .font(.custom("rockb", size: 18))
                .foregroundColor(Color("TextGrey"))
            
            VStack (spacing: 18) {
                TextField("Email adress", text: $email)
                    .font(.custom("ROCK", size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color(.black), lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.custom("ROCK", size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color(.black), lineWidth: 1))
                
                Button(action: signIn) {
                    Text("Sign in")
                        .frame(minWidth: 0, maxWidth: 240)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.custom("ROCK", size: 14))
                        .background(RoundedRectangle(cornerRadius: 50))
                }
                if (error != "") {
                    Text(error)
                        .font(.custom("ROCK", size: 14))
                        .foregroundColor(.red)
                        .padding()
                }
                Spacer()
                
                NavigationLink(destination: SignUpView()) {
                    HStack {
                        Text("Don't have an account?")
                            .font(.custom("ROCK", size: 14))
                            .foregroundColor(.textGrey)
                        
                        Text("Sign up here!")
                            .font(.custom("ROCK", size: 14))
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal, 32)
        }
    }
}
struct SignUpView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore
    @State var isLoggedIn = false
    
    func signUp() {
        session.signUp(email: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View {
        
        VStack {
            Text("Create Account")
                .font(.custom("rockb", size: 32))
            
            Text("Sign up to get started")
                .font(.custom("rockb", size: 18))
                .foregroundColor(Color("TextGrey"))
            
            VStack (spacing: 18) {
                TextField("Email adress", text: $email)
                    .font(.custom("ROCK", size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color(.black), lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.custom("ROCK", size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color(.black), lineWidth: 1))
            }
            Button(action: signUp) {
                Text("Sign up")
                    .frame(minWidth: 0, maxWidth: 240)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.custom("ROCK", size: 14))
                    .background(RoundedRectangle(cornerRadius: 50))
            }
            if (error != "") {
                Text(error)
                    .font(.custom("ROCK", size: 14))
                    .foregroundColor(.red)
                    .padding()
            }
            Spacer()
            
        }
    }
}


// Mark: - View


struct LoginScreen: View {
    
    
    
    var body: some View {
        
        NavigationView {
            SignInView()
        }
    }
}




struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen().environmentObject(SessionStore())
    }
}
