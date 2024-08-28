//
//  CustomSwipeView.swift
//  HotProspects
//
//  Created by Rodrigo on 27-08-24.
//

import SwiftUI

struct CustomSwipeView: View {
    var body: some View {
        List {
            Text("Random Name")
                .swipeActions {
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("Delete")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("Pinning")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    CustomSwipeView()
}
