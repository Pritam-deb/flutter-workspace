import 'package:flutter/material.dart';

void main() {
  runApp(mainLayout());
}

class mainLayout extends StatefulWidget {
  const mainLayout({Key? key}) : super(key: key);

  @override
  State<mainLayout> createState() => _mainLayoutState();
}

class _mainLayoutState extends State<mainLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Layouts Play'),
      ),
      body: Card(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 60,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Flutter McFlutter",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Experienced App Developer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "123 Main Street",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "(415) 555-0198",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.accessibility,
                    size: 30,
                  ),
                  Icon(
                    Icons.timer,
                    size: 30,
                  ),
                  Icon(
                    Icons.phone_android,
                    size: 30,
                  ),
                  Icon(
                    Icons.phone_iphone,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
