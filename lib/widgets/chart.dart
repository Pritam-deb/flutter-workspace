import 'package:flutter/material.dart';
import '../model/transaction.dart';
class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);
  List<Map,<String,Object>> get groupTransactionValues{
    return List.generate(7,(index){
      return {'day':'M','amount':1000};
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      child: Row(children: [

      ],),
    );
  }
}