import 'package:flutter/material.dart';
import 'package:word_learning_app/models/chat.dart';

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
