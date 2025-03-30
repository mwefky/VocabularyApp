//
//  AudioManager.swift
//  VocabularyApp
//
//  Created by Mina Wefky on 30/03/2025.
//

import AVFoundation

class AudioManager: NSObject, ObservableObject, AudioManaging {
    private var recorder: AVAudioRecorder?
    private var player: AVAudioPlayer?
    private var currentRecordingURL: URL?

    @Published var isRecording = false
    @Published var isPlaying = false

    @Published var hasRecording: Bool = false
    
    override init() {
        super.init()
        requestPermission()
    }

    private func requestPermission() {
        AVAudioSession.sharedInstance().requestRecordPermission { _ in }
    }

    func startRecording(for word: String) {
        stopPlayback() // ✅ Stop playback before recording

        let safeWord = word.replacingOccurrences(of: "\\W", with: "_", options: .regularExpression)
        let fileName = "\(safeWord)-recording.m4a"
        let path = FileManager.default.temporaryDirectory.appendingPathComponent(fileName)
        currentRecordingURL = path

        let settings: [String: Any] = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 12000,
            AVNumberOfChannelsKey: 1,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]

        do {
            try AVAudioSession.sharedInstance().setCategory(.playAndRecord, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            recorder = try AVAudioRecorder(url: path, settings: settings)
            recorder?.record()
            isRecording = true
        } catch {
            print("Failed to start recording:", error)
            isRecording = false
        }
    }

    func stopRecording() {
        recorder?.stop()
        recorder = nil
        isRecording = false
        hasRecording = currentRecordingURL != nil
    }

    func playRecording() {
        stopRecording() // ✅ Stop recording before playback

        guard let url = currentRecordingURL else { return }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.volume = 1.0
            player?.delegate = self
            player?.play()
            isPlaying = true
        } catch {
            print("Playback failed:", error)
            isPlaying = false
        }
    }

    func stopPlayback() {
        guard let player = player else { return }

        // Fade out volume smoothly
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            if player.volume > 0.1 {
                player.volume -= 0.1
            } else {
                player.stop()
                self.player = nil
                self.isPlaying = false
                timer.invalidate()
            }
        }
    }
}

extension AudioManager: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        isPlaying = false
    }
}
