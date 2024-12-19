//
//  WordleView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//



import SwiftUI

    struct WorldleView: View {
        @State private var userGuess: String = ""
        @State private var feedback: String = ""
        @State private var feedbackColor: Color = .gray
        @State private var silhouetteImage: String = "France"
        // Placeholder image name
        
        var body: some View {
            VStack(spacing: 40) {
                Text("Guess the Country!")
                    .font(.headline)
                ZStack {
                    RoundedRectangle (cornerRadius: 35)
                        .foregroundColor(.yellow)
                        .frame (width: 250, height: 250)
                    Image(silhouetteImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding()
                }
                
                TextField("Enter your guess", text: $userGuess)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .padding()
               // If you want to add a spacer => Spacer(minLength:60)
            
                Button("Submit") {
                    feedback = checkGuess(userGuess)
                }
                .buttonStyle(.borderedProminent)
                .padding()
                
                Text(feedback)
                    .foregroundColor(feedbackColor)
                    .padding()
            }
            .navigationTitle("Worldle Game")
        }
        
        func checkGuess(_ guess: String) -> String {
            // Placeholder logic
            if guess.lowercased() == "france" {
                feedbackColor = .green
                return "Correct"
            } else {
                feedbackColor = .red
                return "Try again!"
            
               
            }
        }
    }
    
#Preview {
    WorldleView()
}
