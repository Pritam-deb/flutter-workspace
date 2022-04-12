import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name, desc;
  CustomListTile(this.name, this.desc);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
