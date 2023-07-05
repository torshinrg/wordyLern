import 'package:flutter/material.dart';

import 'word.dart';

class AddWordScreen extends StatelessWidget {
  final TextEditingController wordController = TextEditingController();
  final TextEditingController translationController = TextEditingController();
  final TextEditingController learnedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Word'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: wordController,
              decoration: InputDecoration(
                labelText: 'Word',
              ),
            ),
            TextField(
              controller: translationController,
              decoration: InputDecoration(
                labelText: 'Translation',
              ),
            ),
            TextField(
              controller: learnedController,
              decoration: InputDecoration(
                labelText: 'Learned',
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                final word = Word(
                  id: UniqueKey().toString(),
                  word: wordController.text,
                  translation: translationController.text,
                  learned: int.tryParse(learnedController.text) ?? 0,
                );
                word.save();

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

