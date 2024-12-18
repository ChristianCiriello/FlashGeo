//
//  EuropeView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

struct EuropeView: View {
    @State private var currentCardIndex = 0
    @State private var isFlipped = false
    
    // Recupero le flashcard per l'Europa dal dataset
    private var flashcards: [Flashcard] {
        return FlashcardDataset.continents["Europe"] ?? []
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

                // Aggiungi il pulsante "Next Question" solo quando la risposta è visibile
                if isFlipped {
                    Button("Next Question") {
                        // Vai alla prossima flashcard
                        currentCardIndex += 1
                        isFlipped = false // Torna a nascondere la risposta per la nuova domanda
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
                // Capovolgi la carta per mostrare la risposta
                isFlipped.toggle()
            }
        }
    }
}

#Preview {
    EuropeView()
}
