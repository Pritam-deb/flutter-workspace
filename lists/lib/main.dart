import 'package:flutter/material.dart';

import './customListTile.dart';

void main() {
  runApp(ListsRender());
}

class ListsRender extends StatefulWidget {
  @override
  State<ListsRender> createState() => _ListRenderState();
}

class _ListRenderState extends State<ListsRender> {
  var lists = [
    {
      'name': 'Akira',
      'description': 'Japan, 1988. An explosion caused ....',
      'image': 'akira.jpg',
    },
    {
      'name': 'Perfect Blue',
      'description': 'J-pop idol group CHAM! has spent....',
      'image': 'kiminonawa.jpg',
    },
    {
      'name': 'Koe no Katachi',
      'description': 'As a wild youth, elementary...',
      'image': 'koenokatachi.jpg',
    },
    {
      'name': 'Violet Evergarden',
      'description': 'As a wild youth, elementary...',
      'image': 'perfectblue.jpg',
    },
    {
      'name': 'Kimi no nawa',
      'description': 'As a wild youth, elementary...',
      'image': 'violet.jpg',
    },
  ];
  // var lists = [
  //   'Akira',
  //   'Perfect Blue',
  // ];

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                itemCount: lists.length,
                itemBuilder: (context, index) {
                  final name = lists[index]['name'];
                  final desc = lists[index]['description'];
                  final img = lists[index]['image'];
                  return CustomListTile(
                      name as String, desc as String, img as String);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
