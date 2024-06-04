import 'package:flutter/material.dart';
import 'package:music_app/Screens/Gallery.dart';
//import 'package:music_app/Screens/Home.dart';
//import 'package:music_app/Screens/Gallery.dart';
//import 'package:music_app/Screens/Player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      home: GalleryScreen(),
    );
  }
}
