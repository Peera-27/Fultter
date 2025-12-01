# BMI Calculator

A Flutter application for calculating Body Mass Index (BMI) based on user input for height, weight, age, and gender.

## Features

- Input gender (Male/Female)
- Adjustable height using a slider
- Increment/decrement weight and age
- Dark theme with custom colors
- Responsive UI with card-based components

## Screenshots

<!-- Add screenshots here -->
![Input Screen](screenshots/input_screen.png)
![Result Screen](screenshots/result_screen.png)

## Installation

1. Ensure you have Flutter installed. For installation instructions, see [Flutter's official documentation](https://flutter.dev/docs/get-started/install).

2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/w3.git
   cd w3
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Usage

1. Launch the app.
2. Select your gender by tapping on the male or female card.
3. Adjust your height using the slider.
4. Use the plus/minus buttons to set your weight and age.
5. Tap the calculate button at the bottom to see your BMI result.

## Project Structure

- `lib/main.dart`: Entry point of the application.
- `lib/screen/input_screen.dart`: Main input screen for BMI calculation.
- `lib/screen/result_screen.dart`: Screen to display BMI results (currently under development).
- `lib/screen/components/`: Reusable UI components for cards and inputs.

## Dependencies

- Flutter SDK: ^3.9.2
- flutter_lints: ^5.0.0

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
