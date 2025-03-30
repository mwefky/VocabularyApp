//
//  DailyChallengeBanner.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

struct DailyChallengeBanner: View {
    let text: String

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "lightbulb.fill")
                .foregroundColor(.yellow)
            Text(text)
                .font(.subheadline)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .background(Color.black.opacity(0.25))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}
