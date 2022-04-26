import 'package:flutter/material.dart';
import './service/student_service.dart';
import './models/student.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Student? s = Student(studentID: '', studentName: '');
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  init() async {
    s = await loadStudent();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Fetched List!'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          if (s == null) {
            return SizedBox();
          }
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s?.studentName ?? '',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    s?.studentScore.toString() ?? '',
                    //'',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
          );
        }),
        itemCount: 20,
      ),
    ));
  }
}
