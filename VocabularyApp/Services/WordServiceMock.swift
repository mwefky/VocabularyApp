//
//  WordServiceMock.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import Foundation

struct WordServiceMock: WordServiceProtocol {
    func fetchWords() -> [Word] {
        return [
            Word(
                text: "Serendipity",
                definition: "The occurrence of events by chance in a happy or beneficial way.",
                partOfSpeech: "noun",
                moodColor: "blue"
            ),
            Word(
                text: "Ephemeral",
                definition: "Lasting for a very short time.",
                partOfSpeech: "adjective",
                moodColor: "purple"
            ),
            Word(
                text: "Luminous",
                definition: "Emitting or reflecting light; bright or shining.",
                partOfSpeech: "adjective",
                moodColor: "yellow"
            ),
            Word(
                text: "Petrichor",
                definition: "A pleasant smell that frequently accompanies the first rain after a long period of warm, dry weather.",
                partOfSpeech: "noun",
                moodColor: "green"
            ),
            Word(
                text: "Mellifluous",
                definition: "A sound that is sweet and smooth, pleasing to hear.",
                partOfSpeech: "adjective",
                moodColor: "orange"
            )
        ]
    }
}
