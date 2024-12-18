//
//  FlashcardView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

struct FlashcardView: View {
    var continent: String
    @State private var currentCardIndex = 0
    @State private var isFlipped = false

    private var flashcards: [Flashcard] {
        return FlashcardDataset.continents[continent] ?? []
    }

    var body: some View {
        VStack {
            if currentCardIndex < flashcards.count {
                let flashcard = flashcards[currentCardIndex]
                FlashcardView2(
                    question: flashcard.question,
                    answer: flashcard.answer,
                    imageName: flashcard.imageName
                )
                .padding()

                if isFlipped {
                    Button("Next Question") {
                        currentCardIndex += 1
                        isFlipped = false
                    }
                    .padding()
                }
            } else {
                Text("No more questions!")
                    .font(.title)
                    .padding()
            }
        }
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
            }
        }
    }
}

