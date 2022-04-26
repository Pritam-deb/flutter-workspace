import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../models/student.dart';

Future<String> _loadStudentAsset() async {
  return await rootBundle.loadString('assets/student.json');
}

Future<Student> loadStudent() async {
  String jsonString = await _loadStudentAsset();
  final jsonResponse = json.decode(jsonString);
  Student student = new Student.fromJson(jsonResponse);
  print(student.studentName);
  // print(student.studentID);
  print(student.toString());
  return student;
}
