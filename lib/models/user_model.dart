class UserModel {
  final String userId;
  final String email;
  final String name;
  final String profilePictureUrl;

  UserModel({
    required this.userId,
    required this.email,
    required this.name,
    required this.profilePictureUrl,
  });

  // To convert Firestore document to UserModel
  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      userId: data['userId'] ?? '',
      email: data['email'] ?? '',
      name: data['name'] ?? '',
      profilePictureUrl: data['profilePictureUrl'] ?? '',
    );
  }

  // To convert UserModel to a map
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'profilePictureUrl': profilePictureUrl,
    };
  }
}
