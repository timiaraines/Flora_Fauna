//
//  LaunchView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack{
            Color.launch.background
            Image("Lotus-Flower")
                .resizable()
                .frame(width: 240, height: 128)
        }
    }
    
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
