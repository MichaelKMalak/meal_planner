# Meal Planner
A simple daily and weekly meal planning toy app.

<img src="https://raw.githubusercontent.com/MichaelKMalak/meal_planner/assets/snapshot.gif" height=70% width=70%/>

## Features
The app has three separate screens:
1- "Day" screen which shows only the meals for a single day
2- "Week" screen which shows all the meals for an entire week
3- "Meals list" which allows you to pick a meal and add to a day or week

## Folder Structure
```bash
.
├── application
│   ├── dependency_injection
│   └── providers
├── presentation
│   ├── features
│   ├── shared_widgets
│   ├── styles
│   └── routes
├── utils
└── data
    ├── data_source
    ├── models
    └── repository
```

## Building ##
  - Run `flutter channel stable` to make sure you're on the Flutter's stable channel 
  - Run `flutter upgrade` to pull latest Flutter updates from the stable branch
  - Run `flutter packages get` first to download the dependencies.
  - Run `flutter run` to try it live on running emulator or usb connected device.
  - Run `flutter build apk` to generate APK file.
  - Run `flutter build ios` to package iOS app.