//
//  TabNavigationView.swift
//  HotProspects
//
//  Created by Rodrigo on 26-08-24.
//

import SwiftUI

struct TabNavigationView: View {
    @State private var selectedTab = "Three"
    
    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem {
                    Label("One", systemImage: "star")
                }
            
            Text("Tab 2")
                .tabItem {
                    Label("Two", systemImage: "circle")
                }
        }
        
        TabView(selection: $selectedTab) {
            Button("Show Tab 4") {
                selectedTab = "Four"
            }
            .tabItem {
                Label("Three", systemImage: "rectangle")
            }
            
            Text("Tab 4")
                .tabItem {
                    Label("Two", systemImage: "triangle")
                }
                .tag("Four")
        }
    }
}

#Preview {
    TabNavigationView()
}
