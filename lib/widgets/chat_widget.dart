import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_learning_app/models/chat.dart';
import 'package:word_learning_app/services/chat_service.dart';
import 'package:word_learning_app/utils/styles.dart';

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Consumer<ChatService>(
            builder: (context, chatService, child) {
              return ListView.builder(
                itemCount: chatService.chats.length,
                itemBuilder: (context, index) {
                  Chat chat = chatService.chats[index];
                  return ListTile(
                    title: Text(chat.sender),
                    subtitle: Text(chat.message),
                    trailing: chat.sender == 'User' ? Icon(Icons.person) : Icon(Icons.computer),
                  );
                },
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Type your message here...',
                  ),
                  style: chatStyle,
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  Provider.of<ChatService>(context, listen: false).sendMessage(_controller.text);
                  _controller.clear();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
