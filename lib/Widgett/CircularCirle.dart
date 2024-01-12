import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularRadioChoice extends StatefulWidget {
  final int value;
  final String label;

  CircularRadioChoice({required this.value, required this.label});

  @override
  _CircularRadioChoiceState createState() => _CircularRadioChoiceState();
}

class _CircularRadioChoiceState extends State<CircularRadioChoice> {
  int? groupValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio<int>(
          value: widget.value,
          groupValue: groupValue,
          onChanged: (int? value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}

// Usage
