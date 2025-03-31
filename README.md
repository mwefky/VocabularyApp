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

## 📱 Screen
![Simulator Screenshot - iPhone 16 Pro - 2025-03-31 at 15 02 54](https://github.com/user-attachments/assets/58ecf5f3-9100-4df5-8633-419d3e0ea7ac)
shots
![Simulator Screenshot - iPhone 16 Pro - 2025-03-31 at 15 02 50](https://github.com/user-attachments/assets/39087a56-5827-4420-b53d-c0861cdb057b)
![Simulator Screenshot - iPhone 16 Pro - 2025-03-31 at 15 01 48](https://github.com/user-attachments/assets/a4835718-39d8-48e9-b830-9cd6da2912c5)
![Simulator Screenshot - iPhone 16 Pro - 2025-03-31 at 15 01 48](https://github.com/user-attachments/assets/8b73919e-694d-4ea0-bc36-096229953a8e)

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

🚀 UX Improvements & Suggestions❌ Feature Currently Spoiling User Experience
The cluttered lower-half of the original home screen

In the original app, the home screen includes 4 small buttons (share, favorite, speech, save) and a bottom navigation bar with 3 more options (categories, practice, settings).

This results in overload and distraction, taking focus away from the main goal — learning the word.

✅ Why it's hurting UX:

It reduces clarity and adds friction.

Most users are here to swipe and learn, not manage favorites or jump around.

✅ Suggested fix:

Remove or hide these elements until they are actually needed.

Focus the UI on the word, its meaning, and a single clear action (like record/play or “next”).


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
git clone https://github.com/mwefky/VocabularyApp.git
cd VocabularyApp
Open .xcodeproj or .xcworkspace

Run the project on any simulator or device (under 100MB build)

🙏 Credits
Special thanks to Tangent-App and @Corentin Selz for sending me this challenge. It was a joy to build this app with care, speed, and creativity.

📜 License
MIT License — feel free to fork, modify, or contribute.

💬 Contact
Built with ❤️ by Mina Wefky
🔗 https://www.linkedin.com/in/mina-wefky-a2876993/ | 📧 minawefky3@gmail.com
