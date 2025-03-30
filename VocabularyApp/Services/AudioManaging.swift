//
//  AudioManaging.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import Foundation

protocol AudioManaging {
    func startRecording(for word: String)
    func stopRecording()
    func playRecording()
}
