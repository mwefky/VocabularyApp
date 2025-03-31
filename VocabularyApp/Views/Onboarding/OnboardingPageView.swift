//
//  OnboardingPageView.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

struct OnboardingPageView: View {
    let title: String
    let subtitle: String
    let buttonTitle: String
    let action: () -> Void

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)

            Text(subtitle)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
                .foregroundColor(.secondary)

            Spacer()

            Button(action: action) {
                Text(buttonTitle)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.horizontal, 32)
            }
            .padding(.bottom, 40)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

