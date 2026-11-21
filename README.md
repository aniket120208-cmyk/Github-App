# GitHub Mobile UI Clone

A Flutter implementation replicating the user interface and navigation flows of the GitHub mobile application.

## Overview

This project recreates the dark-mode interface of GitHub Mobile using Flutter and Dart. It focuses on clean screen architecture, smooth navigation between core tabs, and responsive UI components matching the native mobile experience.

## Implemented Screens

- **Home (`home_screen.dart`)**: Central dashboard with quick-access shortcuts, recent activity feeds, and direct navigation to the discussions view.
- **My Work (`my_work_screens/`)**: Dedicated section organizing user-specific workflows, including the Discussions screen.
- **Copilot (`copilot_screen.dart`)**: Interactive interface modeled after GitHub Copilot, complete with pull-to-refresh support.
- **Inbox (`inbox_screen.dart`)**: Notification center layout for managing mentions, review requests, and repository updates.
- **Explore (`explore_screen.dart`)**: Discovery feed showcasing trending repositories and developer activity.
- **Search (`search_screen.dart`)**: Search interface for querying repositories, issues, pull requests, and users.
- **Profile (`profile_screen.dart`)**: User profile view displaying account details, contribution highlights, and pinned repositories.

## Project Structure

```text
lib/
└── screens/
    ├── my_work_screens/
    │   └── discussions_screen.dart
    ├── copilot_screen.dart
    ├── explore_screen.dart
    ├── home_screen.dart
    ├── inbox_screen.dart
    ├── profile_screen.dart
    └── search_screen.dart