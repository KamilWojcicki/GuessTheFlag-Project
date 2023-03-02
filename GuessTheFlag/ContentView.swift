//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Kamil Wójcicki on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScores = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var wrong = 0
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1 ,green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Guess the country")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.callout.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            
                    }
                    
                    ForEach(0..<3){ number in
                        Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 10)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScores){
            if wrong == 3{
                Button("Reset", action: resetScore)
            }else{
                Button("Continue", action: askQuestion)
            }
        }message: {
            if wrong == 3{
                Text("Your final score is \(score)")
            }else{
                if wrong < 3{
                    Text("Your score is \(score) \n You have \(3 - wrong) try left")
                }
            }
        }
    }
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
            score += 1
        }else{
            scoreTitle = "Wrong!"
            wrong += 1
        }
        showingScores = true
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func resetScore(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
