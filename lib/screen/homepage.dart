import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
Map? supportResponse;
List? listResponse;

class _HomePageState extends State<HomePage> {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        listResponse = mapResponse!['data'];
        supportResponse = mapResponse!['support'];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API fetching'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Image.network(listResponse![index]['avatar']),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child:
                                listResponse == null || supportResponse == null
                                    ? Text("loading the data...")
                                    : Text(
                                        listResponse![index]['first_name']
                                                .toString() +
                                            ' ' +
                                            listResponse![index]['last_name']
                                                .toString(),
                                      ),
                          ),
                          Text(
                            listResponse![index]['email'].toString(),
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: listResponse == null ? 0 : listResponse!.length,
      ),
    );
  }
}
