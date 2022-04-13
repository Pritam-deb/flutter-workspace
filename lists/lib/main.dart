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
      'description':
          'Japan, 1988. An explosion caused by a young boy with psychic powers tears through the city of Tokyo and ignites the fuse that leads to World War III.',
      'image': 'akira.jpg',
      'year': '1988'
    },
    {
      'name': 'Perfect Blue',
      'description':
          'J-pop idol group CHAM! has spent the last two years entertaining its fans. Sadly, all good things must come to an end, and CHAM! must see one of its members, Mima Kirigoe, leave the group to pursue her acting career. While Mima\'s choice is met with a mixed response, she hopes her fans will continue to support her.',
      'image': 'perfectblue.jpg',
      'year': '1998'
    },
    {
      'name': 'Koe no Katachi',
      'description': 'As a wild youth, elementary...',
      'image': 'koenokatachi.jpg',
      'year': '2018'
    },
    {
      'name': 'Violet Evergarden',
      'description': 'As a wild youth, elementary...',
      'image': 'violet.jpg',
      'year': '2021'
    },
    {
      'name': 'Kimi no nawa',
      'description':
          'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.',
      'image': 'kiminonawa.jpg',
      'year': '2016'
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
                  final year = lists[index]['year'];
                  return CustomListTile(name as String, desc as String,
                      img as String, year as String);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
