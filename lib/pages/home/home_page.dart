import 'package:flutter/material.dart';
import 'package:notes/pages/home/widgets/card_widget.dart';
import 'package:notes/pages/home/widgets/floating_action_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NOTES"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < notes.length; i++)
                CardWidget(
                    note: notes[i],
                    onTap: () async {
                      final note = await Navigator.pushNamed(
                          context, "/create-note",
                          arguments: notes[i]);
                      if (note != null) {
                        final description = note as String;
                        if (description.isEmpty) {
                          notes.removeAt(i);
                        } else
                          notes[i] = description;
                      }
                      setState(() {});
                    })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButtonWidget(
          onPressed: () async {
            final note = await Navigator.pushNamed(context, "/create-note");
            if (note != null) notes.add(note as String);
            setState(() {});
          },
        ));
  }
}
