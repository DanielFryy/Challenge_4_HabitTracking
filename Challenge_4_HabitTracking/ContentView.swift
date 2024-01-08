//
//  ContentView.swift
//  Challenge_4_HabitTracking
//
//  Created by Daniel Freire on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { i in
                    NavigationLink(value: i) {
                        Text("Row #\(i)")
                    }
                }
            }
            .navigationTitle("My habits")
            .navigationDestination(for: Int.self) { i in
                let activity = Activity(id: UUID(), title: "Brush my teeth", description: "Every day I brush my teeth", frecuency: "Monthly")
                ActivityView(activity: activity)
            }
        }
    }
}

#Preview {
    ContentView()
}
