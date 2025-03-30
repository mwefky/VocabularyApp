//
//  WordMood.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

enum WordMood: String {
    case blue, purple, yellow, green, orange, defaultMood

    init(from raw: String) {
        self = WordMood(rawValue: raw) ?? .defaultMood
    }

    var gradient: LinearGradient {
        switch self {
        case .blue:
            return LinearGradient(
                colors: [Color.blue.opacity(0.8), Color.blue.opacity(0.4)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .purple:
            return LinearGradient(
                colors: [Color.purple.opacity(0.8), Color.purple.opacity(0.4)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .yellow:
            return LinearGradient(
                colors: [Color.yellow.opacity(0.8), Color.orange.opacity(0.5)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .green:
            return LinearGradient(
                colors: [Color.green.opacity(0.8), Color.green.opacity(0.4)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .orange:
            return LinearGradient(
                colors: [Color.orange.opacity(0.8), Color.red.opacity(0.5)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .defaultMood:
            return LinearGradient(
                colors: [Color.gray.opacity(0.8), Color.gray.opacity(0.4)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }

    var icon: String {
        switch self {
        case .blue: return "💧"
        case .purple: return "🔮"
        case .yellow: return "☀️"
        case .green: return "🌿"
        case .orange: return "🔥"
        case .defaultMood: return "🧠"
        }
    }

    var label: String {
        switch self {
        case .blue: return "Calm"
        case .purple: return "Mystical"
        case .yellow: return "Bright"
        case .green: return "Fresh"
        case .orange: return "Warm"
        case .defaultMood: return "Neutral"
        }
    }
}
