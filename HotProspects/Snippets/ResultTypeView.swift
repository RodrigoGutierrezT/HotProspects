//
//  ResultTypeView.swift
//  HotProspects
//
//  Created by Rodrigo on 26-08-24.
//

import SwiftUI

struct ResultTypeView: View {
    @State private var output = ""
    
    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }
    
    func fetchReadings() async {
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(readings.count) readings"
        }
            
        let result = await fetchTask.result
        
        // with do catch block to uwrap result value
//        do {
//            output = try result.get()
//        } catch {
//            output = "Error: \(error.localizedDescription)"
//        }
        
        // with switch statement
        switch result {
        case .success(let str):
            output = str
        case .failure(let error):
            output = "Error \(error.localizedDescription)"
        }
        
        
    }
}

#Preview {
    ResultTypeView()
}
