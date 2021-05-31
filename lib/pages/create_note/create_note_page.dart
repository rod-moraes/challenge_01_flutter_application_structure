import 'package:flutter/material.dart';
import 'package:notes/pages/create_note/widgets/button_widget.dart';
import 'package:notes/pages/create_note/widgets/text_field_widget.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  String description = "";
  TextEditingController textController = TextEditingController();
  bool isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        isEdit = true;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Note" : "Create Note"),
        centerTitle: true,
        actions: [
          if (isEdit)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Navigator.pop(context, "");
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
                onChanged: (value) {
                  description = value;
                  setState(() {});
                },
                textController: textController),
            SizedBox(height: 32),
            ButtonWidget(description: description)
          ],
        ),
      ),
    );
  }
}
