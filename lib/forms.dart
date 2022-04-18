import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(showChar);
  }

  void showChar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('${myController.text.length} characters in password')),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your first name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Last name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your last name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              controller: myController,
              // onChanged: (text) {
              //   int num = text.length;
              //   // print('$num is entered');
              //   AlertDialog(
              //     content: Text('your password is $num characters long'),
              //   );
              // },
              decoration: InputDecoration(
                  labelText: 'Create password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.key)),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Create a password';
                }
                return null;
              },
            ),
          ),
          CheckboxListTile(
            title: Text('Are you Indian?'),
            secondary: Icon(Icons.flag),
            controlAffinity: ListTileControlAffinity.platform,
            value: _checked,
            onChanged: (bool? value) {
              setState(() {
                _checked = value!;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 26.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('data processing')),
                  );
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    ));
  }
}
