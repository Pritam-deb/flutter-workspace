import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name, desc, img, year;
  CustomListTile(this.name, this.desc, this.img, this.year);
  @override
  Widget build(BuildContext context) {
    print('img ${img}');
    return Center(
      child: Row(
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/' + img),
              radius: 100,
            ),
            height: 100,
            width: 100,
          ),
          SizedBox(
            height: 210,
            width: 250,
            child: Card(
                child: Column(
              children: [
                ListTile(
                  title: Text(
                    name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  subtitle: Text(
                    'Year: ' + year,
                    // style: TextStyle(fontSize: 14),
                    // textAlign: TextAlign.left,
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    desc,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
