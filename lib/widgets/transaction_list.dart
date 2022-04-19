import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../model/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'AJ1', amount: 12000, date: DateTime.now()),
    Transaction(id: 't2', title: 'AirMax', amount: 8000, date: DateTime.now()),
    Transaction(id: 't3', title: 'AF1', amount: 9500, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tr) {
        return Card(
            child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 252, 116, 116), width: 2),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                '₹' + tr.amount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 252, 116, 116)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tr.title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 252, 116, 116))),
                Text(DateFormat('dd-MMM-yyyy').format(tr.date),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey))
              ],
            ),
          ],
        ));
      }).toList(),
    );
  }
}
