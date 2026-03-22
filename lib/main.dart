import 'package:flutter/material.dart';
import 'package:book_selection/screens/book_list.dart';

void main() {
  runApp(CeylonBookstoreApp());
}

class CeylonBookstoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(
        primaryColor: const Color(0xFF4F46E5), // Indigo Accent
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F46E5)),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto', // Ensures standard fallback, adapts automatically
      ),
      home: BookList(),
    );
  }
}