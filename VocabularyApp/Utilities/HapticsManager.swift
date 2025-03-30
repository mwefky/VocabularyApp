//
//  HapticsManager.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import UIKit

enum HapticsManager {
    static func impact(style: UIImpactFeedbackGenerator.FeedbackStyle = .medium) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }

    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(type)
    }
}
