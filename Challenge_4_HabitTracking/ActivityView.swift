//
//  ActivityView.swift
//  Challenge_4_HabitTracking
//
//  Created by Daniel Freire on 1/6/24.
//

import SwiftUI

struct ActivityView: View {
    let activity: Activity
    
    var body: some View {
        Form {
            Section("Activity") {
                Text(activity.title)
                    .font(.title)
            }
            Section("Description") {
                Text(activity.description)
            }
            Section("Frecuency") {
                Text(activity.frecuency)
            }
            Section("Completed times") {
                HStack {
                    Spacer()
                    Text("\(activity.completedTimes)")
                    Button(action: {
                        print("Adding")
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    let activity = Activity(id: UUID(), title: "Brush my teeth", description: "Every day I brush my teeth", frecuency: "Monthly")
    return ActivityView(activity: activity)
}
