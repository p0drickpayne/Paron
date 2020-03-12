//
//  LaunchScreen.swift
//  Paron
//
//  Created by Jakob Salomonsson on 2020-03-05.
//  Copyright © 2020 Jakob Salomonsson. All rights reserved.
//

import SwiftUI

extension Color {
    
    static let warmGrey = Color("WarmGrey")
    static let textGrey = Color("TextGrey")
    
    static let gradientStart = Color(red: 141.0 / 255, green: 128.0 / 255, blue: 114.0 / 255).opacity(0.83)
    static let gradientEnd = Color(red: 141.0 / 255, green: 128.0 / 255, blue: 114.0 / 255).opacity(0.49)
    
    static let myGradient = AngularGradient.init(gradient: .init(colors: [gradientEnd, gradientStart]), center: .bottom)
    
}

struct LaunchScreen: View {
    var body: some View {
        ZStack{
            Color.myGradient
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("PearLogoWithText")
                    
                Spacer()
                Image("PearLogo")
                Text("För föräldralediga som letar vänner").foregroundColor(Color.textGrey)
                Spacer()
            }
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
