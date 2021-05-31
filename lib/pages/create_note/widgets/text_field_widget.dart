import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  ValueChanged<String> onChanged;
  TextEditingController textController;

  TextFieldWidget({
    Key? key,
    required this.onChanged,
    required this.textController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.textController,
      maxLines: null,
      onChanged: (value) => this.onChanged(value),
      decoration: InputDecoration(labelText: "Descrição"),
    );
  }
}
