//
//  flora_faunaApp.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import SwiftUI
import FirebaseCore

@main
struct flora_faunaApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
