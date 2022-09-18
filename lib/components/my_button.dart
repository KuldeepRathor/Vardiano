// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.backColor,
    this.iconPath = "",
    this.textColor = Colors.white,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color backColor, textColor;
  final String iconPath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          alignment: Alignment.center,
          height: 55,
          width: size.width,
          decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(2, 10),
                blurRadius: 7,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconPath != "") ...[
                Image(
                  width: 28,
                  image: AssetImage(iconPath),
                ),
                SizedBox(width: 20)
              ],
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
