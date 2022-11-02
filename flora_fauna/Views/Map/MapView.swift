//
//  MapView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var mapAPI = MapAPI()
    @State private var text = ""
    
    var body: some View {
       VStack {
          TextField("Enter an address", text: $text)
             .textFieldStyle(.roundedBorder)
             .padding(.horizontal)
          
          Button("Find address") {
             mapAPI.getLocation(address: text, delta: 0.5)
          }
          
          Map(coordinateRegion: $mapAPI.region, annotationItems: mapAPI.locations) { location in
             MapMarker(coordinate: location.coordinate, tint: .blue)
          }
          .ignoresSafeArea()
       }
    }
 }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
