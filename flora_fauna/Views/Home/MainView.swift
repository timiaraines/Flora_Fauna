//
//  MainView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/22/22.
//

import SwiftUI

struct MainView: View {
    @State var currentTab: Tab = .home
    @Namespace var animation
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $currentTab){
                CycleView()
                    .tag(Tab.home)
                VideoView()
                    .tag(Tab.video)
                ForumView()
                    .tag(Tab.message)
                MapView()
                    .tag(Tab.map)
                ProfileView()
                    .tag(Tab.profile)
            }
            TabBar()
        }
    }
    @ViewBuilder
    func TabBar()->some View{
        HStack(spacing: 0){
            ForEach(Tab.allCases,id: \.rawValue){tab in
                Image(tab.rawValue)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(currentTab == tab ? .white : .white.opacity(0.5))
                    .offset(y: currentTab == tab ? -30 : 0)
                    .background(content: {
                        if currentTab == tab{
                            Circle()
                                .fill(.black)
                                .scaleEffect(2.5)
                                .shadow(color: .black.opacity(0.3), radius: 8, x: 5, y: 10)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                                .offset(y: currentTab == tab ? -30 : 0)
                        }
                    })
                    .frame(maxWidth: .infinity)
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        currentTab = tab
                    }
            }
        }
        .padding(.horizontal,15)
        .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.65, blendDuration:0.65) ,value: currentTab)
        .background{
            CustomCorner(corners: [.topLeft, .topRight], radius:25)
                .fill(Color("PrimaryColor"))
                .ignoresSafeArea()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
