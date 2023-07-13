
class ChatMessage {
  final String senderName;
  final String senderAvatar;
  final String content;
  final bool isSentByMe;

  ChatMessage({
    required this.senderName,
    required this.senderAvatar,
    required this.content,
    required this.isSentByMe,
  });
}
