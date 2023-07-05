import 'package:flutter/material.dart';
import 'package:word_learning_app/widgets/vocabulary_list_widget.dart';

class VocabularyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchVocabularyList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return VocabularyListWidget(data: snapshot.data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Vocabulary>> fetchVocabularyList() async {
    // Fetch the vocabulary list from the server or local database
  }
}