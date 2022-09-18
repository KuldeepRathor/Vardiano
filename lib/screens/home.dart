import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';
import '../widgets/scrollbar.dart';
import '../widgets/product_grid.dart';
import '../widgets/topbar.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            TOP(),
            srcbar(),
            scrollBar(),
            GRID(),
          ],
        ),
      ),
    );
  }
}
