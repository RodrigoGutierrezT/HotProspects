//
//  ListWithSelectionView.swift
//  HotProspects
//
//  Created by Rodrigo on 26-08-24.
//

import SwiftUI

struct ListWithSelectionView: View {
    let users = ["Tohru", "Yuki", "Kyo", "Momiji"]
    @State private var selection = Set<String>()
    
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        
        if selection.isEmpty == false {
            Text("You selected \(selection.formatted())")
        }
        
        EditButton()
    }
}

#Preview {
    ListWithSelectionView()
}
