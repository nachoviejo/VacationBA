//
//  ContentView.swift
//  VacationInBuenosAires
//
//  Created by Kinamic Kinamic on 09/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Places", systemImage: "photo") {
                PlaceList()
            }
            Tab("Trip History", systemImage: "chart.bar.xaxis") {
                TripsChart()
            }
            Tab("Buenos Aires Rates", systemImage: "chart.pie.fill") {
                BuenosAiresChart()
            }
        }
//        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
        .modelContainer(Place.preview)
}
