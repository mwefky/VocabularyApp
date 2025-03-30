//
//  OnboardingView.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding = false

    var body: some View {
        TabView(selection: $currentPage) {
            OnboardingPageView(
                title: "Welcome to Vocab Boost!",
                subtitle: "Swipe through words, learn daily.",
                buttonTitle: "Next",
                action: {
                    currentPage = 1
                }
            )
            .tag(0)

            OnboardingPageView(
                title: "Swipe to Learn",
                subtitle: "Discover 5 new words daily and revisit them anytime.",
                buttonTitle: "Start Learning",
                action: {
                    hasCompletedOnboarding = true
                }
            )
            .tag(1)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}
