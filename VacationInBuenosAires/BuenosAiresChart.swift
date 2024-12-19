//
//  ContentView.swift
//  VacationInBuenosAires
//
//  Created by Kinamic Kinamic on 09/08/2024.
//

import SwiftUI
import Charts

struct SampleRating {
    let place: String
    let rating: Int
    
    static let rating: [SampleRating] = [
        SampleRating(place: "Congreso", rating: 70),
        SampleRating(place: "Obelisco", rating: 82),
        SampleRating(place: "Corrientes", rating: 95),
        SampleRating(place: "Casa Rosada", rating: 60),
        SampleRating(place: "Floralis", rating: 42)
    ]
}

struct BuenosAiresChart: View {
    var body: some View {
        Chart(SampleRating.rating, id: \.place) { rating in
            SectorMark(angle: .value("Ratings", rating.rating), innerRadius: .ratio(0.5), angularInset: 1)
                .cornerRadius(7)
                .foregroundStyle(by: .value("Place", rating.place))
            
        }
        .padding()
        .frame(height: 500)
    }
}

#Preview {
    BuenosAiresChart()
}
