import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name, desc, img;
  CustomListTile(this.name, this.desc, this.img);
  @override
  Widget build(BuildContext context) {
    print('img ${img}');
    return Center(
      child: Row(
        children: [
          Image(
            image: AssetImage('images/' + img),
            height: 100,
            width: 100,
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
