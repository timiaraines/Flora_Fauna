//
//  LaunchView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import SwiftUI

struct LaunchView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("Lotus-Flower")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .font(.system(size: 20))
                    Text("f l o r a   f a u n a")
                        .foregroundColor(Color("PrimaryColor").opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
