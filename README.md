![GSOC Banner Image](assets/gsoc_banner_image.jpeg)

**Mentored By:** _Huan Lin, Justin McCandless_

**By:** Anandi Chovatiya

# ✨ Flutter Custom Context Menu Demo

A modern Flutter project demonstrating a powerful **custom context menu** inside a `TextField`, enhanced with smart text manipulation features like **Shout**, **Reverse**, **Text-to-Speech**, and **Smart Paste**.

This project uses **Provider for state management**, clean modular architecture, and is easy to extend for any rich text-based application.

---

## 🚀 Preview

### 📸 Screenshots
![Demo Screenshot 1](assets/readme_images/demo_screenshot_1.png)  
![Demo Screenshot 2](assets/readme_images/demo_screenshot_2.png)

### 🎥 Video Demo
[![Click here to see the video demo](https://img.shields.io/badge/▶%20Click%20here%20to%20see%20the%20video%20demo-red?style=for-the-badge)](https://www.youtube.com/shorts/8AvdqU6feso)

---

## 🚀 Features

- 🔊 **Speak** – Converts selected text to audio using `flutter_tts`
- ⬆️ **Shout** – Uppercases selected text
- ↩️ **Reverse** – Reverses the selected text
- 📋 **Smart Paste** – Pastes clipboard content with a 💡 prefix

💡 **Bonus Highlights**:
- Uses `contextMenuBuilder` for seamless integration
- Provider-based architecture
- Modular folder structure
- Centralized theme and strings

---

## 🧠 How It Works

1. `TextField` uses `contextMenuBuilder` to override the default menu.
2. Custom buttons are added dynamically alongside Flutter’s native actions.
3. Text transformations are handled by `TextActionProvider`.
4. Speech is powered by the `flutter_tts` package.
5. Smart Paste inserts clipboard data with custom formatting.

---

## 🛠️ Getting Started

### 1. Clone the Repository

```bash
git clone [https://github.com/anandi111/flutter_custom_context_menu_project.git](https://github.com/anandi111/flutter_custom_context_menu_project.git)
cd flutter_custom_context_menu_project
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Run the App

```bash
flutter run
```

---

## 📁 Folder Structure

```bash
lib/
├── core/
│   └── init_providers.dart             # Global provider initialization
├── helpers/
│   └── tts_helper.dart               # Text-to-speech logic
├── providers/
│   └── text_action_provider.dart      # State management
├── screens/
│   └── home_screen.dart              # Main screen with context menu
├── utils/
│   ├── strings.utils.dart             # Centralized strings
│   └── color.utils.dart              # Centralized colors
│   └── appthemes.utils.dart           # Centralized appthemes
└── main.dart
```

---

## 🛠️ Tech Stack
- **Flutter** 3.29.0
- **Dart** 3.7.0
- **flutter_tts** (For Text to Speech conversation)
- **provider** (For State Management)

---

## 💬 Usage Tips

📝 After launching the app:

* Type some text.
* Select a portion of it.
* Long-press (mobile) or right-click (desktop) to open the custom context menu.
* Try features like Speak, Shout, Reverse, or Smart Paste.

---

## 📄 Note

This project is specifically designed to showcase Flutter development techniques and is primarily intended for evaluation by Google Summer of Code (GSOC) mentors and for the author's portfolio. Its use for other purposes is under the terms of the MIT License, but with the understanding that it was created in a GSOC context.

## 🧑‍💻 Author

Anandi Chovatiya
🔗[@GitHub](https://github.com/anandi111)
🔗[@LinkedIn](https://www.linkedin.com/in/anandi-chovatiya-54a3b5228)

