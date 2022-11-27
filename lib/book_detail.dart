// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task2/book.dart';
import 'package:task2/stars.dart';

class BookDetailScreen extends StatelessWidget {
   BookDetailScreen({Key? key}) : super(key: key);
  Book book = Book();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(
                    image: AssetImage('assets/icons/Vector.png'),
                    width: 20,
                    height: 20,
                  ),
                  Image(
                    image: AssetImage('assets/icons/icon1.png'),
                    width: 21,
                    height: 21,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/image 16.png'),
                    fit: BoxFit.cover,
                    width: 210,
                    height: 320,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Yves Saint Laurent',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Suzy Menkes',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stars(
                        height: 80,
                        width: 90,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      const Text(
                        r'4.5',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 18, top: 8, bottom: 4),
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        elevatedbuttoncustom(
                            imgUrl: 'assets/icons/Vector (1).png',
                            text: 'Perview'),
                        elevatedbuttoncustom(
                            text: 'Reviews',
                            imgUrl: 'assets/icons/Vector (2).png')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  ///////////////////////////////////////////////
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(r'Buy Now for $46.99'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        minimumSize: Size(355, 60)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton elevatedbuttoncustom({String? imgUrl, String? text}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.black26,
          minimumSize: Size(154, 40)),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage(imgUrl!),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text!,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ), // <-- Text
        ],
      ),
    );
  }
}
