//
//  clean_architecture_swiftui_newsApp.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 12/9/25.
//

import SwiftUI
import SwiftData

@main
struct clean_architecture_swiftui_newsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
