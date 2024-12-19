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
    // Takes flashcard from Africa Dataset
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
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 5)
                        .accessibilityLabel("Question: \(flashcard.question)")
                    
                    if isFlipped {
                        Text(flashcard.answer)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                            .accessibilityLabel("Answer: \(flashcard.answer)")
                            .accessibilityHint("This is the answer to the question.")
                    } else {
                        Text("Tap to reveal the answer.")
                            .font(.headline)
                            .foregroundColor(.purple)
                            .accessibilityHidden(true) // Not needed for VoiceOver
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
                .accessibilityHint(isFlipped ? "Double-tap to hide the answer." : "Double-tap to reveal the answer.")

                //  Next flashcard Button
                if isFlipped {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 140, height: 30)
                            .foregroundColor(.purple)
                        Button("Next Flashcard") {
                        // goes to the next flashcard
                        currentCardIndex += 1
                        isFlipped = false
                        // Re-hide the answer of the new flashcard
                    }
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                            .accessibilityLabel("Next Flashcard")
                            .accessibilityHint("Loads the next flashcard.")
                    }
                }
            } else {
                Text("No more flashcards available!")
                    .foregroundColor(.blue)
                    .bold()
                    .font(.title)
                    .padding()
                    .accessibilityLabel("No more flashcards available.")
                    .accessibilityHint("You have completed all the flashcards for Africa.")
            }
        }
    }
}

#Preview {
    AfricaView()
}

