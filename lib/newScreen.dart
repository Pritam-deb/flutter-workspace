import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  final String photo;
  NewScreen(this.photo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            transitionOnUserGestures: true,
            tag: photo,
            child: Image(image: AssetImage('images/' + photo)),
          ),
        ),
      ),
    );
  }
}
