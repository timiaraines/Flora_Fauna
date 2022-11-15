//
//  CycleView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/9/22.
//

import SwiftUI

struct CycleView: View {
    @State var currentDate: Date = Date()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing:20){
                CustomDatePicker(currentDate: $currentDate)
            }
        }
    }
}

struct CycleView_Previews: PreviewProvider {
    static var previews: some View {
        CycleView()
    }
}
