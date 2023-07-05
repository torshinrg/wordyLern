import 'package:flutter/material.dart';

import 'word_list.dart';
import 'add_word_screen.dart';
import 'word.dart';

class VocabularyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vocabulary'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vocabulary Screen',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              child: Text('Add Word'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddWordScreen()),
                );
              },
            ),
            Expanded(
              child: WordList(),
            ),
          ],
        ),
      ),
    );
  }
}

