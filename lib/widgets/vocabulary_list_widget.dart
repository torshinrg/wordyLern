```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/word.dart';
import '../services/vocabulary_service.dart';
import '../utils/styles.dart';

class VocabularyListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<VocabularyService>(
      builder: (context, vocabularyService, child) {
        return ListView.builder(
          itemCount: vocabularyService.words.length,
          itemBuilder: (context, index) {
            Word word = vocabularyService.words[index];
            return ListTile(
              title: Text(
                word.word,
                style: wordStyle,
              ),
              subtitle: Text(
                word.translation,
                style: wordStyle,
              ),
              trailing: _buildLearningStatusIndicator(word.learningStatus),
            );
          },
        );
      },
    );
  }

  Widget _buildLearningStatusIndicator(int learningStatus) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: learningStatus <= 5 ? mainColor : secondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
```