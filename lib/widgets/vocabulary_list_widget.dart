import 'package:flutter/material.dart';
import 'package:word_learning_app/models/word.dart';

class VocabularyListWidget extends StatelessWidget {
  final List<Word> vocabularyList;

  VocabularyListWidget({required this.vocabularyList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vocabularyList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(vocabularyList[index].word),
          subtitle: Text(vocabularyList[index].definition),
        );
      },
    );
  }
}