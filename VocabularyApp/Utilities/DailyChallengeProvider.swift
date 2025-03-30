//
//  DailyChallengeProvider.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import Foundation

struct DailyChallengeProvider {
    static func challenge(for word: String) -> String {
        let templates = [
            "Use \"\(word)\" in a sentence today!",
            "Can you say \"\(word)\" out loud?",
            "Try writing a sentence with \"\(word)\".",
            "Practice using \"\(word)\" when chatting with someone!",
            "Think of a scenario where you'd use \"\(word)\".",
            "Include \"\(word)\" in your journal entry today.",
            "Make a social post using \"\(word)\" (just for fun!)"
        ]

        return templates.randomElement() ?? "Use \"\(word)\" today!"
    }
}
