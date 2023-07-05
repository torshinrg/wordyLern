```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:your_app_name/models/word.dart';
import 'package:your_app_name/services/vocabulary_service.dart';
import 'package:your_app_name/utils/styles.dart';
import 'package:your_app_name/widgets/vocabulary_list_widget.dart';

class VocabularyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vocabulary List', style: TextStyle(color: secondaryColor)),
        backgroundColor: mainColor,
      ),
      body: FutureBuilder<List<Word>>(
        future: Provider.of<VocabularyService>(context, listen: false).getVocabularyList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.error != null) {
            return Center(child: Text('An error occurred!'));
          } else {
            return VocabularyListWidget(snapshot.data);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: secondaryColor),
        backgroundColor: mainColor,
        onPressed: () {
          Navigator.of(context).pushNamed('/addWord');
        },
      ),
    );
  }
}
```