import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';
import '../model/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'AJ1', amount: 12000, date: DateTime.now()),
    Transaction(id: 't2', title: 'AirMax', amount: 8000, date: DateTime.now()),
    Transaction(id: 't3', title: 'AF1', amount: 9500, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, int txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        id: DateTime.now().toString(),
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
