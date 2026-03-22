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
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BookList(),
    );
  }
}
