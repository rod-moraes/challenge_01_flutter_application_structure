import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String note;
  GestureTapCallback onTap;
  CardWidget({
    Key? key,
    required this.note,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(note), onTap: this.onTap),
    );
  }
}
