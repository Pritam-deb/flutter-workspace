import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: 'email dhalo!'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'kuch bhi dhalo';
              }
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 26.0),
            child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: Text('Submit email')),
          )
        ],
      ),
    ));
  }
}
