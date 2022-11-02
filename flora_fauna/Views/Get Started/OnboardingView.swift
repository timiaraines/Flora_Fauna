//
//  OnboardingView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var page: Page
    
    var body: some View {
        VStack(spacing: 20){
            Image("\(page.imageURL)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                .padding()
            Text(page.name)
                .font(.title)
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(page: Page.samplePage)
    }
}
