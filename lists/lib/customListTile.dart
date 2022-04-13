import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name, desc, img, year;
  CustomListTile(this.name, this.desc, this.img, this.year);
  @override
  Widget build(BuildContext context) {
    print('img ${img}');
    return Container(
      color: Colors.green,
      height: 210,
      width: 200,
      child: Card(
          color: Colors.orange,
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      title: Text(
                        name,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      subtitle: Text(
                        'Year: ' + year,
                        // style: TextStyle(fontSize: 14),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    Text(
                      desc,
                      maxLines: 5,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
