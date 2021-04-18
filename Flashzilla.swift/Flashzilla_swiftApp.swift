//
//  Flashzilla_swiftApp.swift
//  Flashzilla.swift
//
//  Created by Arshya GHAVAMI on 4/1/21.
//

import SwiftUI

@main
struct Flashzilla_swiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
