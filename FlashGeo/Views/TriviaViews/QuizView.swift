//
//  QuizView.swift
//  FlashGeo
//
//  Created by Christian Ciriello on 18/12/24.
//

import SwiftUI

struct Flag {
        let name: String
        let emoji: String
    }

struct QuizView: View {
        // Flags DataSet Array
        @State private var flags = [
            // North America
            Flag(name: "United States", emoji: "🇺🇸"),
            Flag(name: "Canada", emoji: "🇨🇦"),
            Flag(name: "Mexico", emoji: "🇲🇽"),
            // Central America
            // Continental Nations
            Flag(name: "Belize", emoji: "🇧🇿"),
            Flag(name: "Costa Rica", emoji: "🇨🇷"),
            Flag(name: "El Salvador", emoji: "🇸🇻"),
            Flag(name: "Guatemala", emoji: "🇬🇹"),
            Flag(name: "Honduras", emoji: "🇭🇳"),
            Flag(name: "Nicaragua", emoji: "🇳🇮"),
            Flag(name: "Panama", emoji: "🇵🇦"),
            // Insular Nations (Antilles)
            Flag(name: "Barbados", emoji: "🇧🇧"),
            Flag(name: "Cuba", emoji: "🇨🇺"),
            Flag(name: "Dominica", emoji: "🇩🇲"),
            Flag(name: "Haiti", emoji: "🇭🇹"),
            Flag(name: "Dominican Republic", emoji: "🇩🇴"),
            Flag(name: "Trinidad & Tobago", emoji: "🇹🇹"),
            // Commonwealth realm
            Flag(name: "Antigua e Barbuda", emoji: "🇦🇬"),
            Flag(name: "Bahamas", emoji: "🇧🇸"),
            Flag(name: "Giamaica", emoji: "🇯🇲"),
            Flag(name: "Grenada", emoji: "🇬🇩"),
            Flag(name: "Saint Kitts & Nevis", emoji: "🇰🇳"),
            Flag(name: "Saint Lucia", emoji: "🇱🇨"),
            Flag(name: "Saint Vincent & Grenadine", emoji: "🇻🇨"),
            // South America
            Flag(name: "Argentina", emoji: "🇦🇷"),
            Flag(name: "Bolivia", emoji: "🇧🇴"),
            Flag(name: "Brazil", emoji: "🇧🇷"),
            Flag(name: "Chile", emoji: "🇨🇱"),
            Flag(name: "Colombia", emoji:"🇨🇴"),
            Flag(name: "Ecuador", emoji: "🇪🇨"),
            Flag(name: "Falkland Islands", emoji: "🇫🇰"),
            Flag(name: "South Georgia & South Sandwich Islands", emoji: "🇬🇸"),
            Flag(name: "French Guiana", emoji: "🇬🇫"),
            Flag(name: "Guyana", emoji: "🇬🇾"),
            Flag(name: "Paraguay", emoji: "🇵🇾"),
            Flag(name: "Perù", emoji: "🇵🇪"),
            Flag(name: "Suriname", emoji: "🇸🇷"),
            Flag(name: "Uruguay", emoji: "🇺🇾"),
            Flag(name: "Venezuela", emoji: "🇻🇪"),
            
            
            // Northern Europe
            Flag(name: "United Kingdom", emoji: "🇬🇧"),
            Flag(name: "Finland", emoji: "🇫🇮"),
            Flag(name: "Sweden", emoji: "🇸🇪"),
            Flag(name: "Albania", emoji: "🇦🇱"),
            Flag(name: "Greece", emoji: "🇬🇷"),
            Flag(name: "Ireland", emoji: "🇮🇪"),
            Flag(name: "Israel", emoji: "🇮🇱"),
            Flag(name: "Latvia", emoji: "🇱🇻"),
            Flag(name: "Romania", emoji: "🇷🇴"),
            Flag(name: "Czechia", emoji: "🇨🇿"),
            Flag(name: "Italy", emoji: "🇮🇹"),
            Flag(name: "Spain", emoji: "🇪🇸"),
            Flag(name: "Hungary", emoji: "🇭🇺"),
            Flag(name: "Denmark", emoji: "🇩🇰"),
            Flag(name: "Lithuania", emoji: "🇱🇹"),
            Flag(name: "Estonia", emoji: "🇪🇪"),
            Flag(name: "Iceland", emoji: "🇮🇸"),
            // Western Europe
            Flag(name: "Germany", emoji: "🇩🇪"),
            Flag(name: "France", emoji: "🇫🇷"),
            Flag(name: "Netherlands", emoji: "🇳🇱"),
            Flag(name: "Belgium", emoji: "🇧🇪"),
            Flag(name: "Austria", emoji: "🇦🇹"),
            Flag(name: "Switzerland", emoji: "🇨🇭"),
            Flag(name: "Luxembourg", emoji: "🇱🇺"),
            Flag(name: "Liechtenstein", emoji: "🇱🇮"),
            Flag(name: "Monaco", emoji: "🇲🇨"),
            Flag(name: "Malaysia", emoji: "🇲🇾"),
            Flag(name: "Montenegro", emoji: "🇲🇪"),
            Flag(name: "Kosovo", emoji: "🇽🇰"),
            Flag(name: "Afghanistan", emoji: "🇦🇫"),
            Flag(name: "Norway", emoji: "🇳🇴"),
            Flag(name: "Bhutan", emoji: "🇧🇹"),
            Flag(name: "Laos", emoji: "🇱🇦"),
            Flag(name: "Botswana", emoji: "🇧🇼"),
            Flag(name: "Cambodia", emoji: "🇰🇭"),
            Flag(name: "Central African Republic", emoji: "🇨🇫"),
            Flag(name: "Cape Verde", emoji: "🇨🇻"),
            Flag(name: "Chad", emoji: "🇹🇩"),
            Flag(name: "Japan", emoji: "🇯🇵"),
            Flag(name: "Russia", emoji: "🇷🇺"),
            Flag(name: "China", emoji: "🇨🇳"),
            
            
            
        ].shuffled()
        
        @State private var currentQuestion = 0
        @State private var score = 0
        @State private var showingScore = false
        @State private var gameOver = false
        @State private var selectedAnswer = ""
        @State private var feedback = ""
        
        var options: [String] {
            var answers = [flags[currentQuestion].name]
            while answers.count < 4 {
                if let randomFlag = flags.randomElement() {
                    if !answers.contains(randomFlag.name) {
                        answers.append(randomFlag.name)
                    }
                }
            }
            return answers.shuffled()
        }
        
        var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white, .white]),
                              startPoint: .topLeading,
                              endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack(spacing: 15) {
                    ZStack {
                        RoundedRectangle (cornerRadius: 35)
                            .foregroundColor (.yellow)
                            .frame(width: 250, height: 150)
                        
                        RoundedRectangle (cornerRadius: 35)
                            .foregroundColor (.purple)
                            .frame(width: 220, height: 110)
                        
                        Text("WORLD MIX")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .accessibilityLabel("Game Title: World Mix")
                        
                    }
                    .padding (.top, 20)
                    
                    
                    Text("Score: \(score)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .accessibilityLabel("Your current score is \(score)")
                    
                    if currentQuestion < flags.count {
                        VStack(spacing: 20) {
                            
                            Text(flags[currentQuestion].emoji)
                                .font(.system(size: 120))
                                .accessibilityLabel("Flag displayed: \(flags[currentQuestion].name)")
                            
                            ForEach(options, id: \.self) { option in
                                Button(action: {
                                    checkAnswer(option)
                                }) {
                                    Text(option)
                                        .font(.title2)
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: 280)
                                        .padding()
                                        .background(Color.purple.opacity(1))
                                        .cornerRadius(20)
                                        .accessibilityLabel(option)
                                        .accessibilityHint("Tap to select this option as your answer.")
                                }
                            }
                            
                            if !feedback.isEmpty {
                                Text(feedback)
                                    .foregroundColor(feedback.contains("Correct") ? .green : .red)
                                    .font(.headline)
                                    .accessibilityLabel(feedback)
                                    .accessibilityHint(feedback.contains("Correct") ? "You got the correct answer!" : "This was not the correct answer.")
                            }
                        }
                        .padding()
                    }
                }
                .alert("Game Over!", isPresented: $gameOver) {
                    Button("Play Again", action: resetGame)
                        .accessibilityLabel("Play Again")
                        .accessibilityHint("Tap to restart the quiz.")
                } message: {
                    Text("Your final score is \(score) out of \(flags.count)")
                    .accessibilityLabel("Game over. Your final score is \(score) out of \(flags.count).")
                }
            }
        }
        
        func checkAnswer(_ answer: String) {
            selectedAnswer = answer
            
            if answer == flags[currentQuestion].name {
                score += 1
                feedback = "Correct! 🎉"
            } else {
                feedback = "Wrong! The correct answer was \(flags[currentQuestion].name)"
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                feedback = ""
                nextQuestion()
            }
        }
        
        func nextQuestion() {
            if currentQuestion + 1 < flags.count {
                currentQuestion += 1
            } else {
                gameOver = true
            }
        }
        
        func resetGame() {
            flags.shuffle()
            currentQuestion = 0
            score = 0
            feedback = ""
            selectedAnswer = ""
        }
    }

#Preview {
    QuizView()
}
