//
//  WordCardView.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import SwiftUI

struct WordCardView: View {
    let word: Word

    @State private var isRecording = false
    @StateObject private var audioManager = AudioManager()

    @State private var showToast = false
    @State private var toastMessage = ""

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text(word.text)
                .font(.system(size: 48, weight: .bold))
                .foregroundColor(.white)

            Text(word.partOfSpeech.capitalized)
                .font(.title2)
                .italic()
                .foregroundColor(.white.opacity(0.8))

            Text(word.definition)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.horizontal)

            HStack(spacing: 20) {
                if audioManager.hasRecording {
                    // ✅ Play Only
                    Button(action: {
                        audioManager.playRecording()
                        HapticsManager.impact(style: .light)
                        showStatusToast("Playing...")
                    }) {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }
                } else {
                    // ✅ Record Only
                    Button(action: {
                        if audioManager.isRecording {
                            audioManager.stopRecording()
                        } else {
                            audioManager.startRecording(for: word.text)
                            showStatusToast("Recording...")
                        }
                        HapticsManager.impact(style: .light)
                    }) {
                        Image(systemName: audioManager.isRecording ? "stop.circle.fill" : "mic.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(audioManager.isRecording ? .red : .white)
                    }
                }
            }
            .padding(.top, 20)

            Spacer()
        }
        .overlay(
            Group {
                if showToast {
                    Text(toastMessage)
                        .font(.footnote)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(Color.black.opacity(0.5))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                        .animation(.easeInOut, value: showToast)
                        .padding(.bottom, 0)
                }
            },
            alignment: .bottom
        )
        .padding()
        .background(Color.black.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
    }
    
    func showStatusToast(_ message: String) {
        toastMessage = message
        showToast = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            showToast = false
        }
    }
}
