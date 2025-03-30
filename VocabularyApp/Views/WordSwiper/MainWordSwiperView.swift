//
//  MainWordSwiperView.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

struct MainWordSwiperView: View {
    @StateObject private var viewModel = WordSwiperViewModel()
    @GestureState private var dragOffset: CGSize = .zero
    @State private var cardScale: CGFloat = 1.0
    @State private var dailyChallengeText: String = ""
    @State private var transitionDirection: CGFloat = 0 // track swipe direction
    @Namespace private var cardNamespace // for matched geometry effect

    var body: some View {
        ZStack {
            WordMood(from: viewModel.currentWord.moodColor).gradient
                .ignoresSafeArea()

            VStack {
                // 💡 Daily Challenge Banner
                DailyChallengeBanner(text: dailyChallengeText)
                    .scaleEffect(cardScale)
                    .padding(.top, 60)

                Spacer()

                ZStack {
                    WordCardView(word: viewModel.currentWord)
                        .frame(width: UIScreen.main.bounds.width * 0.88, height: UIScreen.main.bounds.height * 0.6)
                        .cornerRadius(28)
                        .shadow(radius: 10)
                        .matchedGeometryEffect(id: viewModel.currentWord.id, in: cardNamespace)
                        .scaleEffect(cardScale)
                        .transition(
                            AnyTransition.asymmetric(
                                insertion: .move(edge: transitionDirection > 0 ? .trailing : .leading)
                                    .combined(with: .opacity),
                                removal: .move(edge: transitionDirection > 0 ? .leading : .trailing)
                                    .combined(with: .opacity)
                            )
                        )
                        .id(viewModel.currentWord.id) // important to trigger transition
                        .animation(.easeInOut(duration: 0.3), value: viewModel.currentWord.id)
                        .gesture(
                            DragGesture()
                                .updating($dragOffset) { value, state, _ in
                                    state = value.translation
                                }
                                .onEnded { value in
                                    if value.translation.width < -100 {
                                        transitionDirection = 1
                                        animateNext()
                                    } else if value.translation.width > 100 {
                                        transitionDirection = -1
                                        animatePrevious()
                                    }
                                }
                        )
                }

                Spacer()
            }
        }
        .onAppear {
            updateDailyChallenge()
        }
        .onChange(of: viewModel.currentWord.id) { _ in
            updateDailyChallenge()
        }
    }

    private func animateNext() {
        viewModel.next()
        triggerBounce()
    }

    private func animatePrevious() {
        viewModel.previous()
        triggerBounce()
    }

    private func triggerBounce() {
        HapticsManager.impact(style: .medium)
        cardScale = 0.94
        withAnimation(.interpolatingSpring(stiffness: 300, damping: 18)) {
            cardScale = 1.0
        }
    }

    private func updateDailyChallenge() {
        dailyChallengeText = DailyChallengeProvider.challenge(for: viewModel.currentWord.text)
        triggerBounce()
    }
}
