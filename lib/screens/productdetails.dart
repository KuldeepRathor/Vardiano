import 'package:flutter/material.dart';
import '../widgets/product_content/bottombar.dart';
import '../widgets/product_content/product content.dart';
class DETAILS extends StatelessWidget {
  const DETAILS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Column(
          children: [

            Align(alignment:Alignment.centerLeft,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back_ios),
            )),
            Container(height:500, child: Center(child: Text('Imagehere')),),
            PRODATA(),
            bottomBAR(),
          ],
        ),
      ),
    );
  }
}
