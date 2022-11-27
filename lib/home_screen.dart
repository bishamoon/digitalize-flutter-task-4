import 'package:flutter/material.dart';
import 'package:task2/book_tile.dart';

import 'book.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 43, left: 28),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 43, left: 5),
                      child: const Text(
                        'Hi,Ali!',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 43, right: 20),
                  child: Image(
                    image: AssetImage('assets/icons/icon1.png'),
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 30),
              child: Text(
                'Book List',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: Book.books.length,
                itemBuilder: (context, index) {
                  return BookTile(
                    book: Book(
                        bookImagePath: Book.books[index].bookImagePath,
                        bookName: Book.books[index].bookName,
                        bookAuthor: Book.books[index].bookAuthor,
                        bookPrice: Book.books[index].bookPrice),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
