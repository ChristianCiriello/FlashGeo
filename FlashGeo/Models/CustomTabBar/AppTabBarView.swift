//
//  AppTabBarView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    var body: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text ("Home")
                }
//            Color.blue
//                .tabItem {
//                    Image(systemName: "timer.circle")
//                    Text ("Discover")
//                }
            
            Color.orange
                .tabItem {
                    Image(systemName: "brain.filled.head.profile")
                    Text ("Trivia")
                }
        }
    }
}
/* To add afterwards   RoundedRectangle(cornerRadius: 35)
                   .frame(width: 350, height: 150)
                   .foregroundColor(.white)
                   .overlay(
                       RoundedRectangle(cornerRadius: 35)
                           .stroke(Color.black, lineWidth: 10)
                   ) */
    
    #Preview {
        AppTabBarView()
    }
    
