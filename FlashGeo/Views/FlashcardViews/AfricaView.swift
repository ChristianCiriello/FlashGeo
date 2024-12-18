//
//  AfricaView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

struct AfricaView: View {
    // MARK: - State Variables
    @State private var currentCardIndex = 0
    @State private var isFlipped = false
    
    // MARK: - Content
    // Takes flashcard from Europe Dataset
    private var flashcards: [Flashcard] {
        return FlashcardDataset.continents["Africa"] ?? []
    }
    var body: some View {
        VStack {
            if currentCardIndex < flashcards.count {
                let flashcard = flashcards[currentCardIndex]
                
                // FlashcardView with flip logic
                VStack(alignment: .leading) {
                    Text(flashcard.question)
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    if isFlipped {
                        Text(flashcard.answer)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                    }
                    
                    Image(flashcard.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .shadow(radius: 5)
                .onTapGesture {
                    withAnimation {
                        // Flip the flashcard to show the answer
                        isFlipped.toggle()
                    }
                }

                // Pulsante "Next Question"
                if isFlipped {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 140, height: 30)
                            .foregroundColor(.blue)
                        Button("Next Flashcard") {
                        // goes to the next flashcard
                        currentCardIndex += 1
                        isFlipped = false
                        // Re-hide the answer of the new flashcard
                    }
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                    }
                }
            } else {
                Text("No more questions!")
                    .foregroundColor(.blue)
                    .bold()
                    .font(.title)
                    .padding()
            }
        }
    }
}

#Preview {
    AfricaView()
}

