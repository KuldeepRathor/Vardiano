import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SAVEDITEM extends StatefulWidget {
  const SAVEDITEM({Key? key}) : super(key: key);

  @override
  State<SAVEDITEM> createState() => _SAVEDITEMState();
}

class _SAVEDITEMState extends State<SAVEDITEM> {
  @override
  Widget reviewcard(String name, String descrip) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(child: FlutterLogo(),),
        title: Text('product name'),
        subtitle: Text('description'),
        trailing: Text('+ 0 -'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Text('SAVED PRODUCTS',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return reviewcard(
                  'product name',
                  'description');
            }),
          ),
        ],
      ),
    ));

  }
}
