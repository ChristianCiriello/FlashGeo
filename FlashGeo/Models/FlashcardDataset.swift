//
//  FlashcardDataset.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import Foundation

struct FlashcardDataset {
    static let africa: [Flashcard] = [
        Flashcard(
            question: "Which Country is it?",
            answer: "Kenya",
            imageName: "Kenya",
            continent: "Africa"
        ),
        Flashcard(
            question: "Which Country is it?",
            answer: "Democratic Republic of the Congo",
            imageName: "Democratic Republic of the Congo",
            continent: "Africa"
        ),
        Flashcard(
            question: "Which Country is it?",
            answer: "South Africa",
            imageName: "SouthAfrica",
            continent: "Africa"
        ),
        Flashcard(
            question: "Which Country is it?",
            answer: "Egypt",
            imageName: "Egypt",
            continent: "Africa"
        )
    ]

    static let europe: [Flashcard] = [
        Flashcard(
            question: "Which Country is it?",
            answer: "France",
            imageName: "France",
            continent: "Europe"
        ),
        Flashcard(
            question: "Which Country is it?",
            answer: "Italy",
            imageName: "Italy",
            continent: "Europe"
        ),
        Flashcard(
            question: "Which Country is it?",
            answer: "Netherlands",
            imageName: "Netherlands",
            continent: "Europe"
        )
    ]

    static let asia: [Flashcard] = [
        Flashcard(
            question: "Which Country is it?",
            answer: "Nepal",
            imageName: "everest",
            continent: "Asia"
        )
    ]
    
    static let america: [Flashcard] = [
        Flashcard(
            question: "Which Country is it?",
            answer: "USA",
            imageName: "usa",
            continent: "America"
        )
    ]
    
    static let oceania: [Flashcard] = [
        Flashcard(
            question: "Which Country is it?",
            answer: "Australia",
            imageName: "australia",
            continent: "Oceania"
        )
    ]
// to change Lowercased capital letter
    static let continents: [String: [Flashcard]] = [
        "Africa": africa,
        "Europe": europe,
        "Oceania": oceania,
        "Asia": asia,
        "America": america
    ]
}
