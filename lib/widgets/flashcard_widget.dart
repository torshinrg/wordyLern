```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/flashcard.dart';
import '../services/flashcard_service.dart';
import '../utils/styles.dart';

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;

  FlashcardWidget({@required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mainColor,
      child: ListTile(
        title: Text(
          flashcard.word,
          style: flashcardStyle,
        ),
        trailing: IconButton(
          icon: Icon(Icons.arrow_upward),
          onPressed: () {
            Provider.of<FlashcardService>(context, listen: false)
                .updateFlashcard(flashcard);
          },
        ),
      ),
    );
  }
}
```