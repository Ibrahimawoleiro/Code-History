//
//  ContentView.swift
//  Code History
//
//  Created by Ibrahim Awoleiro on 2/2/24.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true) // New line
        .environmentObject(viewModel)
        .background(NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,    incorrectGuesses: viewModel.incorrectGuesses)),isActive: .constant(viewModel.gameIsOver),label: { EmptyView() }))
    }
}

#Preview {
    GameView()
}
