import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TOP extends StatelessWidget {
  const TOP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
 children: [
 Text('VARDIANO',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
 Icon(Icons.shopping_cart_outlined),
],
 ),
    );
  }
}

