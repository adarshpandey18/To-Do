# To-Do List App

This is a simple to-do list application built with Flutter. It allows users to add, mark as complete, and remove tasks. The app uses the Provider package for state management and supports a dark theme.

## Features

- Add new tasks
- Mark tasks as completed
- Remove tasks
- Dark theme support

## Getting Started

### Prerequisites

- Flutter installed on your machine
- A code editor such as VSCode or Android Studio

### Installing

1. Clone the repository:

```bash
  git clone https://github.com/yourusername/todo_list_app.git
  cd todo_list_app
```
2. Install dependencies:
  ```bash
  flutter pub get
  ```
3. Run the application:
  ```bash
  flutter run
  ```
## Project Structure
```bash
lib/
├── main.dart
├── models/
│   ├── Task.dart
│   └── ToDoList.dart
├── pages/
│   ├── add_task.dart
│   └── home_pages.dart
└── widgets/
    └── task_tile.dart
```
- main.dart: Sets up the ChangeNotifierProvider for ToDoList and configures routes.
- models/Task.dart: Defines the Task model.
- models/ToDoList.dart: Manages the list of tasks and notifies listeners.
- pages/add_task.dart: Page for adding a new task.
- pages/home_pages.dart: Home page displaying the list of tasks.
- widgets/task_tile.dart: Custom widget for displaying individual tasks.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
## Acknowledgments
Inspired by various Flutter tutorials and documentation.

