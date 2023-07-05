```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:your_app_name/services/flashcard_service.dart';
import 'package:your_app_name/utils/styles.dart';
import 'package:your_app_name/widgets/flashcard_widget.dart';

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
```