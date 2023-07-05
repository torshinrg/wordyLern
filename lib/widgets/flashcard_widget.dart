import 'package:flutter/material.dart';
import 'package:word_learning_app/models/flashcard.dart';

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;

  FlashcardWidget({required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(flashcard.word),
    );
  }
}