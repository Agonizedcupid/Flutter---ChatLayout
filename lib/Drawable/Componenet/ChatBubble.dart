import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Painter/ArrowPainter.dart';

class ChatBubble extends StatelessWidget {
  final bool isSentByMe;
  final String message;
  final String senderAvatar;

  ChatBubble({
    required this.isSentByMe,
    required this.message,
    required this.senderAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSentByMe) ...[
            CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(senderAvatar),
            ),
            SizedBox(width: 8.0),
            CustomPaint(
              size: Size(24.0, 24.0),
              painter: ArrowPainter(
                color: Colors.grey,
                isSentByMe: false,
              ),
            ),
          ],

          Flexible(
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: isSentByMe ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          if (isSentByMe) ...[
            CustomPaint(
              size: Size(24.0, 24.0),
              painter: ArrowPainter(
                color: Colors.blue,
                isSentByMe: true,
              ),
            ),
            SizedBox(width: 8.0),
            CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(senderAvatar),
            ),
          ],
        ],
      ),
    );
  }
}
