//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var isShowingScore = false
    @State private var isGameOver = false
    @State private var scoreTitle = ""
    @State private var score: Int = 0
    var totalScore = 8
    @State private var questionCount: Int = 1

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                Spacer()
                
                // Game prompt of correct answer
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { index in
                        Button {
                            flagTapped(index)
                        } label: {
                            Image(countries[index])
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 20)
                                .background(.regularMaterial)
                                .clipShape(.rect(cornerRadius: 20))
                        }
                    }
                }
                
                // Title of the score
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
                Spacer()
            }
            .padding()
            
        }
        .alert(scoreTitle, isPresented: $isShowingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Game Over!", isPresented: $isGameOver) {
            Button("Restart", action: restartGame)
        } message: {
            Text("Game over! You scored \(score) out of \(totalScore).")
        }
    }
    
    func flagTapped(_ number: Int) {
        if (number == correctAnswer && questionCount <= 8) {
            scoreTitle = "Correct!"
            score += 1
            
        } else {
            scoreTitle = "Wrong"
            score -= 1
        }
        
        isShowingScore = true
    }
    
    func askQuestion() {
        if (questionCount == 8) {
            isGameOver = true
        } else {
            isGameOver = false
            questionCount += 1
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
        
    }
    
    func restartGame() {
        if (isGameOver) {
            score = 0
            questionCount = 0
            askQuestion()
        }
    }
}

#Preview {
    ContentView()
}
