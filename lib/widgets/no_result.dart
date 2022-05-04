import 'package:flutter/widgets.dart';

class NoResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              "No result found!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
