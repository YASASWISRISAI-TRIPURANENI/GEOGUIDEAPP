class PlaceModel {
  final String placeId;
  final String name;
  final String description;
  final String imageUrl;
  final double latitude;
  final double longitude;

  PlaceModel({
    required this.placeId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
  });

  // Convert Firestore data to PlaceModel
  factory PlaceModel.fromMap(Map<String, dynamic> data) {
    return PlaceModel(
      placeId: data['placeId'] ?? '',
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      latitude: data['latitude'] ?? 0.0,
      longitude: data['longitude'] ?? 0.0,
    );
  }

  // Convert PlaceModel to a map
  Map<String, dynamic> toMap() {
    return {
      'placeId': placeId,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
