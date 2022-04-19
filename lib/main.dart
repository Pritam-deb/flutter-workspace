import 'package:flutter/material.dart';
import 'package:flutter_workspace/model/transaction.dart';
import 'package:intl/intl.dart';

import 'model/transaction.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                child: Text('this is chart will show daily expense'),
                width: double.infinity,
                height: 200,
                color: Colors.amberAccent,
              ),
              elevation: 5,
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                        controller: titleInput,
                        decoration: InputDecoration(
                          labelText: 'Title',
                        )),
                    TextField(
                        controller: amountInput,
                        decoration: InputDecoration(
                          labelText: 'Amount',
                        )),
                    TextButton(
                        onPressed: () {
                          print(amountInput.text);
                          print(titleInput.text);
                        },
                        child: Text('Add Transaction'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
