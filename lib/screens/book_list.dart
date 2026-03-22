import 'package:flutter/material.dart';
import 'package:book_selection/widgets/book.dart';

class BookList extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {
      'coverImagePath': 'assets/images/rich-dad-poor-dad.jpg',
      'title': 'Rich Dad, Poor Dad',
      'author': 'Robert T. Kiyosaki',
      'price': 1250,
    },
    {
      'coverImagePath': 'assets/images/the-alchemist.jpg',
      'title': 'The Alchemist',
      'author': 'Paulo Coelho',
      'price': 1000,
    },
    {
      'coverImagePath': 'assets/images/men-are-from-mars.jpg',
      'title': 'Men Are From Mars',
      'author': 'John Gray',
      'price': 1500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), // Soft modern background
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Ceylon Bookstore',
          style: TextStyle(
            color: Color(0xFF2D3142),
            fontWeight: FontWeight.w800,
            fontSize: 24,
            letterSpacing: -0.5,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Color(0xFF2D3142)),
            onPressed: () {
              // Open cart action
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 40),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Book(
            coverImagePath: book['coverImagePath']!,
            title: book['title']!,
            author: book['author']!,
            price: book['price'] as int,
          );
        },
      ),
    );
  }
}