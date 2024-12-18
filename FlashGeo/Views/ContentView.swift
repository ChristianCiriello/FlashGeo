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
            VStack (spacing: 100){
                // Begin ZStack Rectangles)
                ZStack {
                    RoundedRectangle (cornerRadius: 35)
                        .foregroundColor(.blue)
                        .frame(width: 370, height: 300)
                    RoundedRectangle (cornerRadius: 35)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 230)
                    VStack {
                        Text ("Hi User")
                            .bold()
                            .font(.title3)
                            
                        
                        Text ("Welcome Back!")
                            .font(.largeTitle)
                            .bold()
                        
                        Image (systemName: "globe.europe.africa.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                    } // End Vstack x texts
                }// (End ZStack Rectangles)
               
                .padding(.top, -30)
                VStack {
                    HStack {
                        NavigationLink(destination: AmericaView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                        }
                        NavigationLink(destination: EuropeView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                        }
                        NavigationLink(destination: AfricaView()){
                            
                            Circle()
                                .frame(width: 120, height: 120)
                        }
                        
                    }
                    .padding()
                    // 2° Row
                    VStack {
                        HStack {
                            NavigationLink(destination: AsiaView()){
                                
                                Circle()
                                    .frame(width: 120, height: 120)
                            }
                            NavigationLink(destination: OceaniaView()){
                                
                                Circle()
                                    .frame(width: 120, height: 120)
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

