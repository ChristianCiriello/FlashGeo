//
//  FlashcardView2.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//


import SwiftUI

struct FlashcardView2: View {
    @State private var isFlipped = false
    @State private var rotation: Double = 0

    var question: String
    var answer: String
    var imageName: String

    var body: some View {
        ZStack {
            // Front Side: Question
            CardSideView_question2(text: question, backgroundColor: .yellow, textColor: .white, imageName: imageName)
                .opacity(isFlipped ? 0 : 1)
                .rotation3DEffect(
                    Angle(degrees: rotation),
                    axis: (x: 0, y: 1, z: 0)
                )
            
            // Back Side: Answer
            CardSideView_answer2(text: answer, backgroundColor: .blue, textColor: .white)
                .opacity(isFlipped ? 1 : 0)
                .rotation3DEffect(
                    Angle(degrees: rotation + 180),
                    axis: (x: 0, y: 1, z: 0)
                )
        }
        .frame(width: 300, height: 200)
        .onTapGesture {
            flipCard()
        }
    }

    private func flipCard() {
        withAnimation(.easeInOut(duration: 0.6)) {
            rotation += 180
            isFlipped.toggle()
        }
    }
}

// Front side of the card
struct CardSideView_question2: View {
    let text: String
    let backgroundColor: Color
    let textColor: Color
    let imageName: String

    var body: some View {
        VStack {
            Text("Which country is this?")
                .font(.title)
                .bold()
                .foregroundColor(.blue)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(backgroundColor)
                    .shadow(radius: 5)
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
            }
        }
    }
}

// Back side of the card
struct CardSideView_answer2: View {
    let text: String
    let backgroundColor: Color
    let textColor: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backgroundColor)
                .shadow(radius: 5)
            Text(text)
                .font(.title)
                .bold()
                .italic()
                .foregroundColor(textColor)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    FlashcardView2(
        question: "Which country is this?",
        answer: "France",
        imageName: "France"
    )
}
