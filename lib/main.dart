import 'package:flutter/material.dart';
import './service/student_service.dart';
import './models/student.dart';
import './models/address.dart';
import './service/address_service.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Student? s = Student(studentID: '', studentName: '');
  Address add = Address();

  @override
  void initState() {
    // TODO: implement initState
    init();
    // print(add.streets);
    super.initState();
  }

  init() async {
    // s = await loadStudent();

    add = await loadAddress();
    print(add.streets);
  }

  // print(add.streets.length);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Fetched List!'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          if (add == null) {
            return SizedBox();
          }
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // s?.studentName ?? '',
                    add.city ?? '',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    // s?.studentScore.toString() ?? '',
                    add.streets?[index] ?? '',

                    style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
          );
        }),
        itemCount: 2,
      ),
    ));
  }
}
