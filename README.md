# 📚 Vocabulary App – SwiftUI Rebuild

A lightweight, beautiful, and intuitive vocabulary learning app rebuilt in **SwiftUI**, focused on smooth UX, essential learning features, and personal touches like voice practice, mood-based UI, and daily challenges.

> Rebuilt from scratch as part of a timed coding challenge.  
> ✅ Delivered in under one day.

---

## ✨ Features

- ✅ Onboarding Flow (streamlined)
- ✅ Swipeable Word Cards (5 words, infinite scroll)
- ✅ Daily Challenge Banner (animated, varied prompts)
- ✅ Word Mood System (gradient background based on tone)
- ✅ Voice Practice (record & play your own pronunciation)
- ✅ Smooth Swipe Animations + Haptics
- ✅ Smart Audio Logic (no playback-record overlap)
- ✅ Beautiful app icon for both light and dark modes
- ✅ Toast messages for audio feedback (e.g., “Recording…”)

---

## 📱 Screenshots

*Coming soon*

---

## 📦 Architecture

This project follows a clean, modular **MVVM** architecture with **SOLID principles** in mind:

```plaintext
📁 VocabularyApp
├── 📁 App
│   └── VocabularyApp.swift
│
├── 📁 Models
│   ├── Word.swift               // Word data model
│   └── WordMood.swift           // Enum-based mood logic
│
├── 📁 Services
│   ├── WordServiceMock.swift    // Mock word list provider
│   ├── WordServiceProtocol.swift
│   ├── AudioManager.swift       // Handles recording/playback
│   └── AudioManaging.swift      // Protocol for testability
│
├── 📁 ViewModels
│   └── WordSwiperViewModel.swift
│
├── 📁 Views
│   ├── Onboarding/
│   │   └── OnboardingView.swift
│   ├── WordSwiper/
│   │   ├── MainWordSwiperView.swift
│   │   ├── WordCardView.swift
│   │   └── DailyChallengeBanner.swift
│
├── 📁 Utilities
│   ├── HapticsManager.swift     // Global haptic helper
│   └── DailyChallengeProvider.swift
│
├── 📁 Resources
│   └── Assets.xcassets          // App icon, colors
AudioManager uses protocol-based injection and handles playback-recording conflict

WordSwiperViewModel handles index logic, word service injection, and infinite looping

Views are clean, reactive, and maintain separation of UI and logic

🚀 UX Improvements & Suggestions
Feature to Improve:
The original app allows users to play audio while also starting a new recording, which causes overlapping sounds and a confusing experience.
✅ Fix: Playback is now automatically stopped when recording begins, and vice versa, ensuring clear, conflict-free interaction.

Missing Features That Add Value:

Word Log / History View
Give users access to the words they've seen or practiced.
✅ Adds value by reinforcing memory and showing a sense of progress.

Daily Streak or Progress Tracker
Encourage consistent learning habits with a lightweight streak indicator.
✅ Boosts motivation and retention by rewarding daily usage.

🛠️ Requirements
iOS 15.0+

Xcode 15+

Swift 5.9+

SwiftUI

🧪 Installation
Clone the repo

bash
Copy
Edit
git clone https://github.com/your-username/vocabulary-app-swiftui.git
cd vocabulary-app-swiftui
Open .xcodeproj or .xcworkspace

Run the project on any simulator or device (under 100MB build)

🙏 Credits
Special thanks to Tangent-App and Corentin Selz for sending me this challenge. It was a joy to rebuild this app with care, speed, and creativity.

📜 License
MIT License — feel free to fork, modify, or contribute.

💬 Contact
Built with ❤️ by Mina Wefky
🔗 https://www.linkedin.com/in/mina-wefky-a2876993/ | 📧 minawefky3@gmail.com
