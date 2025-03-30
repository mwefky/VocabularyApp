//
//  WordSwiperViewModel.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import Foundation

final class WordSwiperViewModel: ObservableObject {
    private let wordService: WordServiceProtocol
    let words: [Word]

    @Published var currentIndex: Int = 0

    init(wordService: WordServiceProtocol = WordServiceMock()) {
        self.wordService = wordService
        self.words = wordService.fetchWords()
    }

    var currentWord: Word {
        words[currentIndex]
    }

    func next() {
        currentIndex = (currentIndex + 1) % words.count
    }

    func previous() {
        currentIndex = (currentIndex - 1 + words.count) % words.count
    }
}
