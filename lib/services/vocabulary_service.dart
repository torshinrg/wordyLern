import 'package:flutter/material.dart';
import '../models/word.dart';

class VocabularyService {
  List<Word> _vocabularyList = [];

  List<Word> getVocabularyList() {
    return _vocabularyList;
  }

  void addWord(Word word) {
    _vocabularyList.add(word);
    // Notify listeners about the new word
    notifyListeners('wordAdded');
  }

  void updateWord(Word word) {
    int index = _vocabularyList.indexWhere((w) => w.word == word.word);
    if (index != -1) {
      _vocabularyList[index] = word;
      // Notify listeners about the updated word
      notifyListeners('wordUpdated');
    }
  }

  void deleteWord(Word word) {
    _vocabularyList.removeWhere((w) => w.word == word.word);
    // Notify listeners about the deleted word
    notifyListeners('wordDeleted');
  }

  void notifyListeners(String message) {
    // Implementation of notifying listeners goes here
  }
}
