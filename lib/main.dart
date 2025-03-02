import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geoguideagent/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDZHP9u580KHjMCdX8zDgjeo6ktBGF7pWg",
      authDomain: "travelguideaiplatform-3154a.firebaseapp.com",
      projectId: "travelguideaiplatform-3154a",
      storageBucket: "travelguideaiplatform-3154a.firebasestorage.app",
      messagingSenderId: "600744631290",
      appId: "1:600744631290:web:cb0dd6698f69c8a5d4e243"));
  runApp(const MyApp());
}else{Firebase.initializeApp();}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoGuideAgent',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
