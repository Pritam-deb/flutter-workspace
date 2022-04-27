import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../models/address.dart';

Future<String> _loadAddressAsset() async {
  return await rootBundle.loadString('assets/address.json');
}

Future<Address> loadAddress() async {
  String jsonAddress = await _loadAddressAsset();
  final jsonResponse = json.decode(jsonAddress);
  Address address = new Address.fromJson(jsonResponse);
  // print(address.streets);
  // print(student.studentID);
  // print(student.toString());
  return address;
}
