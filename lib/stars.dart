import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int? width;
  final int? height;
  const Stars({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 5.png')),
      ],
    );
  }
}
