//
//  Place.swift
//  VacationInBuenosAires
//
//  Created by Kinamic Kinamic on 09/08/2024.
//

import SwiftData
import SwiftUI
import MapKit

@Model
class Place {
    #Unique<Place>([\.name, \.latitude, \.longitude])
    
    var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        
        return container
    }
    
    static var previewPlaces: [Place] {
        [
            Place(name: "Corrientes", latitude: -34.6037858, longitude: -58.3916098, interested: true),
            Place(name: "Congreso", latitude: -34.6098163, longitude: -58.397477, interested: true),
            Place(name: "Floralis", latitude: -34.581734, longitude: -58.3947781, interested: false),
            Place(name: "Obelisco", latitude: -34.603734, longitude: -58.3841453, interested: true),
            Place(name: "Casa Rosada", latitude: -34.6079176, longitude: -58.3728527, interested: true)
        ]
    }
}
