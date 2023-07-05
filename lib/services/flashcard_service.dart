```dart
import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardService {
  List<Flashcard> _flashcards = [];

  List<Flashcard> getFlashcards() {
    return _flashcards;
  }

  void addFlashcard(Flashcard flashcard) {
    _flashcards.add(flashcard);
  }

  void updateFlashcard(int index, Flashcard flashcard) {
    _flashcards[index] = flashcard;
  }

  void deleteFlashcard(int index) {
    _flashcards.removeAt(index);
  }

  void increaseLearningStatus(int index) {
    if (_flashcards[index].learningStatus < 5) {
      _flashcards[index].learningStatus++;
    }
  }
}
```