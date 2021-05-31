import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  VoidCallback onPressed;

  FloatingActionButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: this.onPressed,
    );
  }
}
