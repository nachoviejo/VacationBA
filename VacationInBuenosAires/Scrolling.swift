//
//  ScrollImage.swift
//  VacationInBuenosAires
//
//  Created by Kinamic Kinamic on 09/08/2024.
//

import SwiftUI

struct Scrolling: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .corrientes)
                ScrollImage(image: .casarosada)
                ScrollImage(image: .congreso)
                ScrollImage(image: .puertomadero)
                ScrollImage(image: .floralis)
                ScrollImage(image: .tango)
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}
