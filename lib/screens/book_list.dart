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
      'author': 'Coelho Paulo',
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
      appBar: AppBar(
        title: Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Book(
                      coverImagePath: book['coverImagePath'],
                      title: book['title'],
                      author: book['author'],
                      price: book['price'],
                      textColor: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 10), // Add space between books
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
