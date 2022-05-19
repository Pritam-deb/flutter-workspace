import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/news_provider.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NewsList(),
        ),
      ],
      child: MaterialApp(
        title: 'PewNews',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Homepage(),
      ),
    );
  }
}
