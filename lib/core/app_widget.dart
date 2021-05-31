import 'package:flutter/material.dart';
import 'package:notes/pages/create_note/create_note_page.dart';
import 'package:notes/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/create-note": (context) => CreateNotePage(),
      },
    );
  }
}
