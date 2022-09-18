import 'package:flutter/material.dart';
class PRODATA extends StatelessWidget {
  const PRODATA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Two Seater Luxary Sofa') ,
          subtitle: Text('50.99'),
          trailing: Text('+ 01 -'),

        ),
        Row(
          children: [
            Icon(Icons.star),
            Text('4.5'),
            Text('4500 Reviews')
          ],
        ),
        Text('Lorem Epsum fnknv,xs')
      ],
    );
  }
}
