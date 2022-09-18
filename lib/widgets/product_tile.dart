import 'package:flutter/material.dart';

import '../screens/productdetails.dart';
class product extends StatelessWidget {
  final String id;
  final String name;
  final String imagePath;
product(this.id,this.name,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => DETAILS())),
      child: Container(
        child: Column(
          children: [
            Image.asset(imagePath,fit: BoxFit.cover,),
            ListTile(
              title: Text(name),
              subtitle: Text('200\$',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),


      ),
    );
  }
}
