//
//  FlashGeoApp.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

@main
struct FlashGeoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                // Home Tab
                Tab ("Home", systemImage: "house.fill"){
                    ContentView()
                }
                // Trivia Tab
                
                    Tab ("Trivia", systemImage: "brain.filled.head.profile"){
                        TriviaView()
                    }
                    
            }
        }
    }
}
