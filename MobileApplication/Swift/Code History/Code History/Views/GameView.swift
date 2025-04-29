//
//  ContentView.swift
//  Code History
//
//  Created by Zane Myers on 2/26/25.
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
            .foregroundColor(GameColor.foreground)
            .navigationBarBackButtonHidden(true)
            .environmentObject(viewModel)
        }
    }
}

#Preview {
    GameView()
}
