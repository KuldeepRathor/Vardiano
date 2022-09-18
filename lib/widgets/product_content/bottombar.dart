import 'package:flutter/material.dart';
class bottomBAR extends StatefulWidget {
  const bottomBAR({Key? key}) : super(key: key);

  @override
  State<bottomBAR> createState() => _bottomBARState();
}

class _bottomBARState extends State<bottomBAR> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(icon: Icon(Icons.bookmark_outline),onPressed: () {},),
      title:ElevatedButton(
        onPressed: (){}, child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.bold),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(17)
          )
        
      ),
    );
  }
}
