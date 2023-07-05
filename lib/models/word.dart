```dart
class Word {
  final String word;
  final String translation;
  int learningStatus;

  Word({required this.word, required this.translation, this.learningStatus = 0});

  void updateLearningStatus(int newStatus) {
    if (newStatus >= 0 && newStatus <= 6) {
      this.learningStatus = newStatus;
    }
  }
}
```