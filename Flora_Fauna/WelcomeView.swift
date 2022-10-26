//
//  WelcomeView.swift
//  Flora_Fauna
//
//  Created by Timia Raines on 10/24/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Image("Lotus-Flower")
                .resizable()
                .scaledToFit()
                
            Text("Welcome to")
            Text("f l o r a   f a u n a")
            Text("your one stop for all things women's health related")
        }
    }
}
    
    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }

