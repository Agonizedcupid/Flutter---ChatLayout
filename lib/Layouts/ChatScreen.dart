import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Drawable/Componenet/ChatBubble.dart';
import '../Model/ChatModel.dart';
import '../Painter/ArrowPainter.dart';

class ChatScreen extends StatelessWidget {
  final List<ChatMessage> messages = [
    ChatMessage(
      senderName: 'John Doe',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hello there! sdfafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
      isSentByMe: false,
    ),
    ChatMessage(
      senderName: 'Alice Smith',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hi, how are you? adsfasdfasdfasdfasdf asdfasdfasdf asdfasdfdahsdfhsd asdfasdva vadrgt avasdvasdvfadsfascasdfaerf',
      isSentByMe: true,
    ),

    ChatMessage(
      senderName: 'Alice Smith',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hi, how are you? adsfasdfasdfasdfasdf asdfasdfasdf asdfasdfdahsdfhsd asdfasdva vadrgt avasdvasdvfadsfascasdfaerf',
      isSentByMe: true,
    ),
    ChatMessage(
      senderName: 'John Doe',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hello there! sdfafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
      isSentByMe: false,
    ),
    ChatMessage(
      senderName: 'John Doe',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hello there! sdfafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
      isSentByMe: false,
    ),

    ChatMessage(
      senderName: 'Alice Smith',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hi, how are you? adsfasdfasdfasdfasdf asdfasdfasdf asdfasdfdahsdfhsd asdfasdva vadrgt avasdvasdvfadsfascasdfaerf',
      isSentByMe: true,
    ),
    ChatMessage(
      senderName: 'Alice Smith',
      senderAvatar: 'https://via.placeholder.com/300',
      content: 'Hi, how are you? adsfasdfasdfasdfasdf asdfasdfasdf asdfasdfdahsdfhsd asdfasdva vadrgt avasdvasdvfadsfascasdfaerf',
      isSentByMe: true,
    ),
    // Add more chat messages here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          final message = messages[index];
          return ChatBubble(
            isSentByMe: message.isSentByMe,
            message: message.content,
            senderAvatar: message.senderAvatar,
          );
        },
      ),
    );

  }
}