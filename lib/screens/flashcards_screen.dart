import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_learning_app/services/flashcard_service.dart';
import 'package:word_learning_app/utils/styles.dart';
import 'package:word_learning_app/widgets/flashcard_widget.dart';

class FlashcardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        backgroundColor: mainColor,
      ),
      body: Container(
        color: secondaryColor,
        child: Consumer<FlashcardService>(
          builder: (context, flashcardService, child) {
            return ListView.builder(
              itemCount: flashcardService.flashcards.length,
              itemBuilder: (context, index) {
                return FlashcardWidget(
                  flashcard: flashcardService.flashcards[index],
                  onStatusUpdate: (status) {
                    flashcardService.updateFlashcardStatus(
                      flashcardService.flashcards[index].word, status);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
