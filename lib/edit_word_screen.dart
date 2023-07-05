import 'package:flutter/material.dart';

import 'word.dart';

class EditWordScreen extends StatelessWidget {
  final Word word;

  const EditWordScreen({required this.word});

  final TextEditingController wordController = TextEditingController();
  final TextEditingController translationController = TextEditingController();
  final TextEditingController learnedController = TextEditingController();

  @override
  void initState() {
    super.initState();
    wordController.text = word.word;
    translationController.text = word.translation;
    learnedController.text = word.learned.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Word'),
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
                final updatedWord = Word(
                  id: word.id,
                  word: wordController.text,
                  translation: translationController.text,
                  learned: int.tryParse(learnedController.text) ?? 0,
                );
                updatedWord.save();

                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                word.delete();

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

