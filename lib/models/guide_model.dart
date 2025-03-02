class GuideModel {
  final String guideId;
  final String name;
  final String bio;
  final String profilePictureUrl;
  final double rating;
  final List<String> languages;
  final String contactInfo;

  GuideModel({
    required this.guideId,
    required this.name,
    required this.bio,
    required this.profilePictureUrl,
    required this.rating,
    required this.languages,
    required this.contactInfo,
  });

  // Convert Firestore data to GuideModel
  factory GuideModel.fromMap(Map<String, dynamic> data) {
    return GuideModel(
      guideId: data['guideId'] ?? '',
      name: data['name'] ?? '',
      bio: data['bio'] ?? '',
      profilePictureUrl: data['profilePictureUrl'] ?? '',
      rating: data['rating'] ?? 0.0,
      languages: List<String>.from(data['languages'] ?? []),
      contactInfo: data['contactInfo'] ?? '',
    );
  }

  // Convert GuideModel to a map
  Map<String, dynamic> toMap() {
    return {
      'guideId': guideId,
      'name': name,
      'bio': bio,
      'profilePictureUrl': profilePictureUrl,
      'rating': rating,
      'languages': languages,
      'contactInfo': contactInfo,
    };
  }
}
