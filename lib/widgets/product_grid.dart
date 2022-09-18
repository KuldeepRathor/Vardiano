import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/product_tile.dart';
import '../widgets/scrollbar.dart';
import '../widgets/searchbar.dart';
import '../widgets/topbar.dart';
import '../Models/models.dart';
class GRID extends StatelessWidget {
  static List<ProductModel> productss=Constants.chairs;
  const GRID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: GridView.builder(
                itemCount: productss.length,
                itemBuilder: (ctx, i) => product(productss[i].id,productss[i].name,productss[i].imagePath),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    mainAxisSpacing:5,
                    crossAxisSpacing:5,
                    childAspectRatio:1/1.5,
                ),

        ),
      ),
    );

  }
}


