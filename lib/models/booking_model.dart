class BookingModel {
  final String bookingId;
  final String userId;
  final String guideId;
  final DateTime bookingTime;
  final double totalPrice;
  final String status;

  BookingModel({
    required this.bookingId,
    required this.userId,
    required this.guideId,
    required this.bookingTime,
    required this.totalPrice,
    required this.status,
  });

  // Convert Firestore document to BookingModel
  factory BookingModel.fromMap(Map<String, dynamic> data) {
    return BookingModel(
      bookingId: data['bookingId'] ?? '',
      userId: data['userId'] ?? '',
      guideId: data['guideId'] ?? '',
      bookingTime: (data['bookingTime'] as Timestamp).toDate(),
      totalPrice: data['totalPrice'] ?? 0.0,
      status: data['status'] ?? 'Pending',
    );
  }

  // Convert BookingModel to a map
  Map<String, dynamic> toMap() {
    return {
      'bookingId': bookingId,
      'userId': userId,
      'guideId': guideId,
      'bookingTime': bookingTime,
      'totalPrice': totalPrice,
      'status': status,
    };
  }
}
