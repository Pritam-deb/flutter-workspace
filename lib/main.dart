import 'package:flutter/material.dart';
import 'package:flutter_workspace/transaction.dart';

import './transaction.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'AJ1', amount: 12000, date: DateTime.now()),
    Transaction(id: 't2', title: 'AirMax', amount: 8000, date: DateTime.now()),
    Transaction(id: 't3', title: 'AF1', amount: 9500, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                child: Text('this is chart'),
                width: double.infinity,
                height: 200,
                color: Colors.amberAccent,
              ),
              elevation: 5,
            ),
            Column(
              children: transactions.map((tr) {
                return Card(
                  child: Container(
                    child: Text(tr.title),
                    // width: double.infinity,
                    // height: double.infinity,
                    color: Colors.blue,
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
