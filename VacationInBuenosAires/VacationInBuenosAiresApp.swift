//
//  VacationInBuenosAiresApp.swift
//  VacationInBuenosAires
//
//  Created by Kinamic Kinamic on 09/08/2024.
//

import SwiftUI

@main
struct VacationInBuenosAiresApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
