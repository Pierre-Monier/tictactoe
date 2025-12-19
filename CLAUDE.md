# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Development Commands

```bash
# Run the app
flutter run

# Run all tests
flutter test

# Run a single test file
flutter test test/model/tictactoe_game_test.dart

# Generate code (Freezed/Riverpod)
dart run build_runner build --delete-conflicting-outputs

# Watch mode for code generation
dart run build_runner watch --delete-conflicting-outputs

# Analyze code
flutter analyze

# Format code (120 char line width)
dart format .
```

## Architecture

This is a Flutter Tic-Tac-Toe app using **Clean Architecture** with three layers:

### Layer Structure
- **Model** (`lib/model/`) - Pure business logic, no Flutter dependencies
- **Notifier** (`lib/presentation/notifier/`) - State management with Riverpod
- **UI** (`lib/presentation/ui/`) - Flutter widgets

### State Management
- **Riverpod** with `@riverpod` code generation for providers
- **Freezed** for immutable data classes (generates `.freezed.dart` files)
- Entry point: `TictactoeGameNotifier` manages `TictactoeGameState` containing game, score, and current player

### Key Domain Models
- `TictactoeGame` - Board state (9 cells) and win detection logic
- `Cell` - Sealed class with three variants: `EmptyCell`, `CrossCell`, `NoughtCell`
- `Position` - Row/column coordinates (0-2, 0-2)
- `GameResult` - Sealed class: `ongoing`, `draw`, `crossWins`, `noughtWins`
- `Score` - Tracks wins for each player

### Code Generation
Generated files are excluded from analysis (`.g.dart`, `.freezed.dart`). Run `build_runner` after modifying:
- Any `@freezed` annotated class
- Any `@riverpod` annotated notifier

## Linting

Uses `very_good_analysis` with `riverpod_lint` plugin. Line width is 120 characters.

## Code Guidelines

- **Function length**: Functions must not exceed 15 lines. Split complex logic into dedicated helper functions.
- **Declarative style**: Prefer declarative patterns over imperative code. Use pattern matching, collection methods (`map`, `where`, `fold`), and expression-bodied functions where appropriate.
