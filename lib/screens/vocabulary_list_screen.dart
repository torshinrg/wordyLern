import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_learning_app/models/word.dart';
import 'package:word_learning_app/services/vocabulary_service.dart';
import 'package:word_learning_app/widgets/vocabulary_list_widget.dart';

class VocabularyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Word>>(
      future: Provider.of<VocabularyService>(context, listen: false).getVocabularyList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return VocabularyListWidget(words: snapshot.data);
        }
      },
    );
  }
}