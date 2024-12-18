//
//  Flashcard type View.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

//import SwiftUI
import SwiftUI

struct Flashcard_type_View: View {
    // MARK: - State Variables
    @State private var isFlipped = false  // Tracks if card is flipped
    @State private var rotation: Double = 0  // Tracks rotation angle for animation

    // MARK: - Content
    var question: String
    var answer: String
    
    var body: some View {
        ZStack {
            // Front Side: Question
            CardSideView_question(text: question, backgroundColor: .yellow, textColor: .white)
                .opacity(isFlipped ? 0 : 1)
                .rotation3DEffect(
                    Angle(degrees: rotation),
                    axis: (x: 0, y: 1, z: 0)
                )
            
            // Back Side: Answer
            CardSideView_answer(text: answer, backgroundColor: .blue, textColor: .white)
                .opacity(isFlipped ? 1 : 0)
                .rotation3DEffect(
                    Angle(degrees: rotation + 180),
                    // Rotate back content 180 degrees ahead
                    axis: (x: 0, y: 1, z: 0)
                )
        }
        .frame(width: 300, height: 200)
        .onTapGesture {
            flipCard()
        }
    }
    
    // MARK: - Flip Logic
    private func flipCard() {
        withAnimation(.easeInOut(duration: 0.6)) {
            rotation += 180  // Increment rotation by 180 degrees
            isFlipped.toggle()  // Toggle flip state
        }
    }
}

// MARK: - CardSideView (Reusable View)
struct CardSideView_question: View {
    let text: String
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        VStack {
            Text ("Which country it is?")
                 .font(.title)
                 .bold()
                 .foregroundColor(.blue)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(backgroundColor)
                    .shadow(radius: 5)
                Image("France")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                
                // .scaledToFill()
                /*   Text(text)
                 .font(.title)
                 .foregroundColor(textColor)
                 .multilineTextAlignment(.center)
                 .padding()
                 */
            }
        }
    }
}
struct CardSideView_answer: View {
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

// MARK: - Preview
struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        Flashcard_type_View(question:"", answer: "FRANCE")
            .previewLayout(.sizeThatFits)
    }
}

