//
//  QuestionView.swift
//  Code History
//
//  Created by Zane Myers on 3/5/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    })
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                if viewModel.gameIsOver {
                    NavigationLink(
                        destination: ScoreView(
                            viewModel: ScoreViewModel(
                                correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses
                            )
                        )
                    )
                    {
                        BottomTextView(str: "Next")
                    }
                } else {
                    Button(action: { viewModel.displayNextScreen() }) {
                        BottomTextView(str: "Next")
                    }
                }
            }
        }
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion)
        .environmentObject(GameViewModel())
}
