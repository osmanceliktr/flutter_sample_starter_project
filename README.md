# Flutter Sample Starter Project

This is a sample starter project template equipped with basic components for developing Flutter applications. It has been designed as a modular and well-organized structure to help you quickly start your projects. The application includes essential navigation patterns such as a sidebar and a bottom navigation bar and an example folder structure for better code management.

---

## Features

- **Sidebar Menu**: A sidebar for quick navigation.
- **Bottom Navbar**: A menu at the bottom for easy navigation between pages.
- **Modular Code Structure**: The code structure is made as modular as possible.
- **Theming**: Customizable colors and gradients.
- **Pages**: Includes 8 menu items and pages in the sidebar and 4 in the bottom navbar.

---

## Folder Structure

```plaintext
lib/
|-- pages/                # Contains all page components (e.g., HomePage, DashboardPage)
|-- components/           # Reusable components (e.g., Sidebar, BottomNavBar, AppBar)
|-- menu/menu_items.dart  # Central menu configuration for the sidebar and bottom navbar
|-- main.dart             # Entry point of the application
```

---

## Getting Started

### Requirements

Ensure the following are installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart](https://dart.dev/get-dart)
- A code editor such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/osmanceliktr/flutter_sample_starter_project.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter_sample_starter_project
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

---

## Customization

### Adding a New Page

1. Create a new file in the `pages/` directory, e.g., `example_page.dart`:

   ```dart
   import 'package:flutter/material.dart';

   class ExamplePage extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(title: Text('Example Page')),
         body: Center(child: Text('This is an example page!')),
       );
     }
   }
   ```

2. Register the new page in the `menu_items.dart` file:

   ```dart
   {'icon': Icons.example, 'title': 'Example', 'page': ExamplePage()},
   ```

---

## Contributions

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request.

