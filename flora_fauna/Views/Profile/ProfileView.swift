//
//  ProfileView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/9/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("Lotus-Flower")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height:200)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                Spacer()
            }
            Spacer()
        }.background(Color.white)
        
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
