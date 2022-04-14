import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './randomWords.dart';

void main(List<String> args) {
  runApp(startup_namer());
}

class startup_namer extends StatelessWidget {
  // final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 188, 143, 143),
          foregroundColor: Color.fromARGB(255, 76, 6, 6),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup Names'),
        ),
        body: Center(child: RandomWords()),
      ),
    );
  }
}
