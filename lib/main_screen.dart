import 'package:flutter/material.dart';

import 'vocabulary_screen.dart';
import 'word_list.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordLearny'),
        elevation: 0,
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

