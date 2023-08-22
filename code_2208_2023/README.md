# code_2208_2023

A new Flutter project demostrates draggable scrollable sheet as at 22 Aug 2023

## Summary
This Flutter project demonstrates the usage of draggable scrollable sheet and bottom sheet content with customizable button labels and colors. It showcases a draggable scrollable sheet that contains a text field, a list of custom items, and an elevated button with customizable label and color.

## Folder Structure
The folder structure of this project follows a common Flutter project structure:

- `lib`: Contains the Dart source code files for the project.
  - `presentation`: Contains the presentation layer code.
    - `screens`: Contains the screen widgets for the app.
      - `my_home_page.dart`: Encapsulates the main home page widget.
    - `bottom_sheet_content.dart`: Defines the BottomSheetContent widget.
    - `custom_list_item.dart`: Defines the CustomListItem widget.
    - `app.dart`: Encapsulates the App widget, which sets up the MaterialApp.
  - `main.dart`: The entry point of the Flutter application.
- `assets`: Can be used to store static assets such as images, fonts, etc.
- `test`: Contains the unit tests for the project.
- `android`: Contains the Android-specific files for the project.
- `ios`: Contains the iOS-specific files for the project.

## Installation and Running the App
To install and run the Flutter app on an Android emulator or iOS simulator, follow these steps:

1. Install Flutter by following the official Flutter installation guide: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Set up an Android emulator or iOS simulator. You can use Android Studio or Xcode for this purpose.

3. Clone this repository to your local machine.

4. Open a terminal or command prompt, navigate to the project directory, and run the following command to fetch the project dependencies:

`flutter pub get`

5. Connect your Android device or start the Android emulator. To run the app on an Android device, ensure that USB debugging is enabled.

6. Run the following command to build and launch the app on the Android emulator or connected device:

`flutter run`

If you want to run the app specifically on an iOS simulator, you can use the `--simulator` flag followed by the simulator device name. For example:

`flutter run --simulator "iPhone 12"`

7. The app should now be running on the Android emulator or iOS simulator, and you can interact with it.

Please note that these are general steps, and you may need to adjust them based on your specific development environment and setup.

For more information on Flutter, visit the official Flutter documentation: [Flutter Documentation](https://flutter.dev/docs)



