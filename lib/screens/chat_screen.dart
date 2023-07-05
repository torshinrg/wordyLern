```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:your_app_name/services/chat_service.dart';
import 'package:your_app_name/models/chat.dart';
import 'package:your_app_name/utils/styles.dart';
import 'package:your_app_name/widgets/chat_widget.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat', style: TextStyle(color: secondaryColor)),
        backgroundColor: mainColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Consumer<ChatService>(
              builder: (context, chatService, child) {
                return ListView.builder(
                  itemCount: chatService.chats.length,
                  itemBuilder: (context, index) {
                    Chat chat = chatService.chats[index];
                    return ChatWidget(chat: chat);
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            height: 70.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: 'Send a message...'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: mainColor),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      Provider.of<ChatService>(context, listen: false)
                          .sendMessage(Chat(message: _controller.text, sender: 'User'));
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
```