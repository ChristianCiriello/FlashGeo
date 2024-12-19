//
//  ContentView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 65){
                // Begin ZStack Rectangles)
                ZStack {
                    RoundedRectangle (cornerRadius: 35)
                        .foregroundColor(.blue)
                        .frame(width: 370, height: 300)
                        .accessibilityHidden(true) // Hides this shape from VoiceOver
                    
                    RoundedRectangle (cornerRadius: 35)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 230)
                        .accessibilityHidden(true) // Hides this shape from VoiceOver
                    
                    VStack {
                        Text ("Hi User")
                            .bold()
                            .font(.title3)
                            .accessibilityLabel("Greeting message: Hi User")
                            
                        
                        Text ("Welcome Back!")
                            .font(.largeTitle)
                            .bold()
                            .accessibilityLabel("Welcome message: Welcome Back!")
                        
                        Image (systemName: "globe.europe.africa.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .accessibilityLabel("Globe icon")
                        
                    } // End Vstack x texts
                }// (End ZStack Rectangles)
               
                .padding(.top, -50)
                VStack {
                    HStack {
                        NavigationLink(destination: North_americaView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.yellow)
                                .accessibilityLabel("North America")
                                .accessibilityHint("Opens the North America view")
                        }
                        NavigationLink(destination: EuropeView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.yellow)
                                .accessibilityLabel("Europe")
                                .accessibilityHint("Opens the Europe view")
                        }
                        NavigationLink(destination: AfricaView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.yellow)
                                .accessibilityLabel("Africa")
                                .accessibilityHint("Opens the Africa view")
                        }
                        
                    }
                    .padding()
                    // 2° Row
                    VStack {
                        HStack {
                            NavigationLink(destination: AsiaView()){
                                
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("Asia")
                                    .accessibilityHint("Opens the Asia view")
                            }
                            NavigationLink(destination: OceaniaView()){
                                
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("Oceania")
                                    .accessibilityHint("Opens the Oceania view")
                            }
                            NavigationLink(destination: South_americaView()){
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("South America")
                                    .accessibilityHint("Opens the South America view")
                                
                            }
                        }
                    }
                    
                } // end VStack for Circles (both Rows)
            } // end VStack Block Page
        }// end NavigationView
    }
}

#Preview {
    ContentView()
    
}

