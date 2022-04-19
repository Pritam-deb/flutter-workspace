import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((tr) {
            return Card(
                color: Color.fromARGB(255, 238, 215, 255),
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 252, 116, 116),
                            width: 2),
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
        ),
      ),
    );
  }
}