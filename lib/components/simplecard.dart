// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({
    Key? key,
    required this.img,
    required this.value,
    required this.subValue,
    required this.imgw,
    required this.imgh,
    this.value2 = '',
    required this.imgColor,
  }) : super(key: key);

  final String img, value, subValue, value2;
  final double imgw, imgh;
  final Color imgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(img),
          width: imgw,
          height: imgh,
          color: imgColor,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(
                value2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Text(
          subValue,
          style: TextStyle(
            color: Color(0xff818496),
            fontSize: 14,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
