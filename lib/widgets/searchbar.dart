import 'package:flutter/material.dart';
class srcbar extends StatelessWidget {
  const srcbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Searchforfurniture',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        trailing: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Icon(Icons.filter_alt,color: Colors.white,),
        ),
      ),
    );
  }
}
