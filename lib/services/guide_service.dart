import 'package:cloud_firestore/cloud_firestore.dart';

class GuideService {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<List<Map<String, dynamic>>> getGuides() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('guides').get();
      return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      throw 'Error fetching guides: $e';
    }
  }
}
