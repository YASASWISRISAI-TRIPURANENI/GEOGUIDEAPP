class ChatMessageModel {
  final String senderId;
  final String message;
  final DateTime timestamp;

  ChatMessageModel({
    required this.senderId,
    required this.message,
    required this.timestamp,
  });

  // Convert Firestore data to ChatMessageModel
  factory ChatMessageModel.fromMap(Map<String, dynamic> data) {
    return ChatMessageModel(
      senderId: data['senderId'] ?? '',
      message: data['message'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }

  // Convert ChatMessageModel to a map
  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
