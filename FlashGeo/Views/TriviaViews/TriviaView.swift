//
//  TriviaView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//


import SwiftUI

struct TriviaView: View {
    
        var body: some View {
            
    NavigationView {
            HStack (spacing: 20){
                VStack {
                    NavigationLink(destination: QuizView()){
                     ZStack {
                        
                        
                        RoundedRectangle (cornerRadius: 35)
                             .foregroundColor(.blue)
                            .frame(width: 170, height: 150)
                        
                        
                        
                        Image(systemName: "lightbulb.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                            .padding(.bottom, 40)
                        
                        Text("Quiz")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                            .padding(.top, 90)
                        
                    } //End ZStack 1° Rectangle
                }
            }
                VStack {
                    NavigationLink(destination: WorldleView()){
                        ZStack {
                            RoundedRectangle (cornerRadius: 35)
                                .foregroundColor(.yellow)
                                .frame(width: 170, height: 150)
                            Image(systemName: "globe.europe.africa.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .padding(.bottom, 40)
                            
                            Text("WorldLE")
                                .foregroundColor(.white)
                                .bold()
                                .font(.title2)
                                .padding(.top, 90)
                        } //End ZStack 2° Rectangle
                    }
                }
                
                
            }
            
            
        }
    }
}

#Preview {
    TriviaView()
}
