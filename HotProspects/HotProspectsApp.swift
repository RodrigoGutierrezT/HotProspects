//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Rodrigo on 26-08-24.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
