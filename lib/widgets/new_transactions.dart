import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final Function addTx;
  NewTransactions(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
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
                keyboardType: TextInputType.number,
                controller: amountInput,
                decoration: InputDecoration(
                  labelText: 'Amount',
                )),
            TextButton(
                onPressed: () {
                  addTx(titleInput.text, int.parse(amountInput.text));
                },
                child: Text('Add Transaction'))
          ],
        ),
      ),
    );
  }
}
