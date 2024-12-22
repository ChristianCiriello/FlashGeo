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
                    RoundedRectangle (cornerRadius: 60)
                        .foregroundColor(.blue)
                        .frame(width: 370, height: 300)
                        .accessibilityHidden(true) // Hides this shape from VoiceOver
                    
                    RoundedRectangle (cornerRadius: 60)
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
                            
                            ZStack {
                    
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("North America")
                                    .accessibilityHint("Opens the North America view")
                                Image("North america")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80)
                            }
                        }
                        NavigationLink(destination: EuropeView()){
                            
                            ZStack {
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("Europe")
                                    .accessibilityHint("Opens the Europe view")
                                Image("Europe")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80)
                            }
                        }
                        NavigationLink(destination: AfricaView()){
                            
                            ZStack {
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.yellow)
                                    .accessibilityLabel("Africa")
                                    .accessibilityHint("Opens the Africa view")
                                Image("Africa")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80)
                                
                            }
                        }
                        
                    }
                    .padding()
                    // 2° Row
                    VStack {
                        HStack {
                            NavigationLink(destination: AsiaView()){
                                
                                ZStack {
                                    Circle()
                                        .frame(width: 120, height: 120)
                                        .foregroundColor(.yellow)
                                        .accessibilityLabel("Asia")
                                        .accessibilityHint("Opens the Asia view")
                                    Image("Asia")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90)
                                        .padding(.top, 10)
                                }
                            }
                            NavigationLink(destination: OceaniaView()){
                                
                                ZStack {
                                    Circle()
                                        .frame(width: 120, height: 120)
                                        .foregroundColor(.yellow)
                                        .accessibilityLabel("Oceania")
                                        .accessibilityHint("Opens the Oceania view")
                                    Image("Oceania")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90)
                                    
                                }
                            }
                            NavigationLink(destination: South_americaView()){
                                ZStack {
                                    Circle()
                                        .frame(width: 120, height: 120)
                                        .foregroundColor(.yellow)
                                        .accessibilityLabel("South America")
                                        .accessibilityHint("Opens the South America view")
                                    Image("Southamerica")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90)
                                    
                                }
                                
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

