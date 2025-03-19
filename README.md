# Pizza Delivery App

A modern Flutter application for ordering pizza delivery. This app allows users to browse through a menu of pizzas, customize their orders, and manage their shopping cart.

## Features

- Browse through a variety of pizzas
- View detailed information about each pizza
- Customize pizza size
- Add pizzas to cart
- Manage cart items (add, remove, update quantity)
- View order total
- Modern Material Design 3 UI

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK (latest version)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd pizza_delivery_app
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

## Project Structure

```
lib/
  ├── models/          # Data models
  ├── providers/       # State management
  ├── screens/         # UI screens
  ├── widgets/         # Reusable widgets
  └── main.dart        # App entry point
```

## Dependencies

- provider: ^6.0.5
- google_fonts: ^5.1.0
- flutter_svg: ^2.0.7
- cached_network_image: ^3.2.3
- intl: ^0.18.1
- shared_preferences: ^2.2.0

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
