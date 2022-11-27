//
//  ProfileView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/9/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var enableTracker = true
    var body: some View {
        VStack{
           VStack{
                Image("Lotus-Flower")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height:50)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                Text("f l o r a    f a u n a")
           }
            Spacer()
            Form {
                HStack{
                    Image("ProfilePic")
                    .resizable()
                    .clipped()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
                    Text("Jane Doe's App Settings")
                }
                            
                            Section(header: Text("Basic Information")) {
                                HStack {
                                    Text("First Name")
                                    Spacer(minLength: 100)
                                    Text("Jane")
                                }
                                HStack {
                                    Text("Last Name")
                                    Spacer(minLength: 100)
                                    Text("Doe")
                                }
                            }
                            
                            Section(header: Text("Additional")) {
                                HStack {
                                    Text("Gender")
                                    Spacer(minLength: 100)
                                    Text("Female")
                                }
                                Toggle(isOn: $enableTracker) {
                                    Text("Track Cycle")
                                }
                            }
                        }.navigationBarTitle(Text("Profile"))
                    }
        
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
