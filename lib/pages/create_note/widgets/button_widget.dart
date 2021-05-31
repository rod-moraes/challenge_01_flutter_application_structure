import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String description;
  ButtonWidget({
    Key? key,
    required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: (description.isNotEmpty)
                  ? () {
                      Navigator.pop(context, description);
                    }
                  : null,
              child: Text(
                "Salvar",
              )),
        ),
      ],
    );
  }
}
