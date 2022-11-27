import 'package:flutter/material.dart';
import 'package:task2/book.dart';
import 'package:task2/stars.dart';

class BookTile extends StatelessWidget {
  Book? book = Book();
  BookTile({this.book});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 25, top: 50),
      child: Row(
        children: [
          Image(
            image: AssetImage(book!.bookImagePath!),
            width: 72,
            height: 106,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 26,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book!.bookName!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                book!.bookAuthor!,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                book!.bookPrice!,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 13,
              ),
              const Stars()
            ],
          )
        ],
      ),
    ));
  }


}
