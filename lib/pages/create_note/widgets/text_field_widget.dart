import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController textController;

  TextFieldWidget({
    Key? key,
    required this.onChanged,
    required this.textController,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.widget.textController,
      maxLines: null,
      onChanged: (value) => this.widget.onChanged(value),
      decoration: InputDecoration(labelText: "Descrição"),
    );
  }
}
