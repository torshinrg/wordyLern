class Chat {
  final String message;
  final String sender;

  Chat({required this.message, required this.sender});

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      message: json['message'],
      sender: json['sender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'sender': sender,
    };
  }
}
