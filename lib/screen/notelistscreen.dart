import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NoteList extends StatefulWidget {
  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  String? noteValue;
  @override
  void getNotes() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    noteValue = pref.getString('noteData');
    setState(() {});
  }

  void initState() {
    super.initState();
    getNotes();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Lists Screen'),
      ),
      body: Center(
        child:
            noteValue == null ? Text('No Note saved yet!') : Text(noteValue!),
      ),
    );
  }
}
