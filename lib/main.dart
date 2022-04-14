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
        backgroundColor: Color.fromARGB(255, 68, 8, 146),
        title: Text('Layouts Play'),
      ),
      body: Card(
        shadowColor: Color.fromARGB(255, 175, 56, 249),
        elevation: 10,
        color: Color.fromARGB(255, 179, 136, 222),
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
                            color: Color.fromARGB(255, 49, 2, 73)),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Experienced App Developer",
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
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
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.timer,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.phone_android,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.phone_iphone,
                    size: 30,
                    color: Colors.white,
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
