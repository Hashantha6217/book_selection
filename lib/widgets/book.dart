import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;
  final Color textColor;

  const Book({
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center align children horizontally
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: textColor,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(height: 5),
            Text(
              author,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: textColor,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(height: 10),
            Image.asset(
              coverImagePath,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center align row horizontally
              children: [
                Text(
                  'Rs. $price',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
                SizedBox(width: 6), // Add some space between price and button
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality here
                    print('Added to cart: $title');
                  },
                  child: Text('Add to cart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BookList(),
  ));
}

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Book(
              coverImagePath: book['coverImagePath'],
              title: book['title'],
              author: book['author'],
              price: book['price'],
              textColor: Colors.blueGrey,
            );
          },
        ),
      ),
    );
  }
}
