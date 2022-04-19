import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_workspace/model/transaction.dart';
import 'package:flutter_workspace/widgets/new_transactions.dart';
import 'package:flutter_workspace/widgets/transaction_list.dart';
import 'package:flutter_workspace/widgets/user_transactions.dart';

import 'model/transaction.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
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
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
