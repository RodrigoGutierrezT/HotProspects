//
//  ContextMenuView.swift
//  HotProspects
//
//  Created by Rodrigo on 27-08-24.
//

import SwiftUI

struct ContextMenuView: View {
    @State private var backgroundColor = Color.red
    
    var body: some View {
        VStack {
            Text("Hello World!")
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu {
                    Button("Red", systemImage: "checkmark.circle.fill", role: .destructive) {
                        backgroundColor = Color.red
                    }
                    
                    Button("Green") {
                        backgroundColor = Color.green
                    }
                    
                    Button("Blue") {
                        backgroundColor = Color.blue
                    }
                }
            
        }
    }
}

#Preview {
    ContextMenuView()
}
