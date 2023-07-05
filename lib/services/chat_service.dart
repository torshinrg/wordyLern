```dart
import 'package:flutter/material.dart';
import 'package:your_app/models/chat.dart';

class ChatService {
  List<Chat> _chatMessages = [];

  List<Chat> getChatMessages() {
    return _chatMessages;
  }

  void sendMessage(Chat chat) {
    _chatMessages.add(chat);
    notifyListeners();
  }
}
```