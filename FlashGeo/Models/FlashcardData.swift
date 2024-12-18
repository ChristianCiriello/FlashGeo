//
//  FlashcardData.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import Foundation

struct Flashcard: Identifiable {
    let id = UUID()           // Unique identifier for each flashcard
    let question: String      // The question on the card's front side
    let answer: String        // The answer on the card's back side
    let imageName: String     // The name of the image used in the card
    let continent: String     // The continent this card belongs to
}

