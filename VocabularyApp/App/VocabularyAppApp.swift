//
//  VocabularyAppApp.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

@main
struct VocabularyAppApp: App {
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding = false

    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                MainWordSwiperView()
            } else {
                OnboardingView()
            }
        }
    }
}
