# Flutter Light/Dark Neumorphism UI Demo

This Flutter app demonstrates a **Light/Dark Theme Toggle** feature using **Neumorphism Design** principles. The app uses soft shadows and modern Material3 design to create a subtle 3D effect on UI components. You can switch between light and dark themes dynamically, providing a smooth and visually appealing user experience.

## Features

- **Light/Dark Mode Toggle**: Easily switch between light and dark themes for the app interface.
- **Neumorphism Design**: Implements 3D-like effects with soft, extruded shadows for a modern, minimalistic look.
- **Responsive UI**: Automatically adapts to different screen sizes for a seamless user experience across devices.
- **Immersive UI**: Status bar is hidden for a distraction-free, immersive interface.

## Screenshots

Here’s a preview of the app in different themes:

| **Light Theme** | **Dark Theme** | **App in Action (GIF)** |
|-----------------|----------------|-------------------------|
| <img src="https://github.com/user-attachments/assets/68a4ea19-8be1-4ee8-ba2c-c305bfcf8793" width="300" alt="Neumorphism Light Theme Screenshot"/> | <img src="https://github.com/user-attachments/assets/feb7e889-b117-4db8-b0e3-8b602024cbe9" width="300" alt="Neumorphism Dark Theme Screenshot"/> | <img src="https://github.com/user-attachments/assets/58627114-4f20-44f4-bafd-92e8d61c868c" width="300" alt="Neumorphism Theme Toggle GIF"/> |

## Getting Started

### Prerequisites

Before you run the app, make sure you have the following installed:

- **Flutter SDK**: Follow the installation guide for your platform: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- **IDE**: Install a suitable IDE like **VS Code** or **Android Studio**.

### Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/Keshav-15/flutter-6_dark_neumorphism.git
```

### Install Dependencies

Navigate to the project directory and run:

```bash
flutter pub get
```

### Run the App

Finally, to run the app, use:

```bash
flutter run
```

The app should now be running on your emulator or device!

## Customization

### Adjust Neumorphism Shadows
You can customize the Neumorphism design by modifying the shadow effects. For example, you can change the shadow color, blur radius, and offset in the `boxShadow` property. Here's the relevant code in [main.dart](https://github.com/Keshav-15/flutter-6_dark_neumorphism/blob/b25bf7b170e5b6e6a5bd84fb135cb138e5ed5565/lib/main.dart#L61).

### Theme Toggle
You can manage the light/dark theme switching functionality in the `main.dart` file. For more details, refer to the theme toggle section in the code: [Theme Toggle Code](lib/main.dart).
