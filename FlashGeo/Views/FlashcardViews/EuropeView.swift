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
                
                // FlashcardView con logica di flip
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
                        .frame(height: 200)
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .shadow(radius: 5)
                .onTapGesture {
                    withAnimation {
                        // Capovolgi la carta per mostrare la risposta
                        isFlipped.toggle()
                    }
                }

                // Pulsante "Next Question"
                if isFlipped {
                    Button("Next Question") {
                        // Vai alla prossima flashcard
                        currentCardIndex += 1
                        isFlipped = false // Torna a nascondere la risposta per la nuova domanda
                    }
                    .bold()
                    .padding()
                    
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
    EuropeView()
}
