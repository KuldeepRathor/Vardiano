import 'package:flutter/material.dart';

class scrollBar extends StatelessWidget {
  const scrollBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.chair)),
                Text('chair'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
