import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'word.dart';
import 'edit_word_screen.dart';

class WordList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordBox = Hive.box<Word>('words');

    return ListView.builder(
      itemCount: wordBox.length,
      itemBuilder: (context, index) {
        final word = wordBox.getAt(index);

        return ListTile(
          title: Text(word.word),
          subtitle: Text(word.translation),
          trailing: Text('Learned: ${word.learned}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditWordScreen(word: word)),
            );
          },
        );
      },
    );
  }
}

