//
//  Word.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import Foundation

struct Word: Identifiable {
    let id = UUID()
    let text: String
    let definition: String
    let partOfSpeech: String
    let moodColor: String // We'll use this to start integrating "Word Mood"
}
