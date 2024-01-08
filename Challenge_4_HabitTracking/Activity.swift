//
//  Activity.swift
//  Challenge_4_HabitTracking
//
//  Created by Daniel Freire on 1/6/24.
//

import Foundation

struct Activity: Codable, Identifiable, Hashable {
    let id: UUID
    let title: String
    let description: String
    let frecuency: String
    var completedTimes = 0
}
