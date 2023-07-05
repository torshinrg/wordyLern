```dart
import 'package:flutter/material.dart';
import 'package:word_learning_app/utils/styles.dart';
import 'package:word_learning_app/screens/vocabulary_list_screen.dart';
import 'package:word_learning_app/screens/flashcards_screen.dart';
import 'package:word_learning_app/screens/chat_screen.dart';

void main() {
  runApp(WordLearningApp());
}

class WordLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Learning App',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => VocabularyListScreen(),
        '/flashcards': (context) => FlashcardsScreen(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}
```