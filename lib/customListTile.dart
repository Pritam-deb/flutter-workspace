import 'package:flutter/material.dart';
import './newScreen.dart';

class CustomListTile extends StatelessWidget {
  final String name, desc, img, year;
  CustomListTile(this.name, this.desc, this.img, this.year);
  @override
  Widget build(BuildContext context) {
    print('img ${img}');
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      height: 210,
      width: 200,
      child: Card(
          elevation: 10,
          color: Color.fromARGB(255, 251, 251, 251),
          child: Row(
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NewScreen(img as String);
                    }));
                  },
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: img,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/' + img),
                      radius: 100,
                    ),
                  ),
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
