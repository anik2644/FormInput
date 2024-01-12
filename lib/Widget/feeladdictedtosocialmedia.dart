

import 'package:flutter/material.dart';

class feeladdictedtosocialmedia extends StatefulWidget {
  const feeladdictedtosocialmedia({super.key});

  @override
  State<feeladdictedtosocialmedia> createState() => _feeladdictedtosocialmediaState();
}

class _feeladdictedtosocialmediaState extends State<feeladdictedtosocialmedia> {
  int _selectedAddiction = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do you feel addicted to social media?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, 'Strongly Agree', _selectedAddiction),
              buildFrequencyOption(2, 'Agree', _selectedAddiction),
              buildFrequencyOption(3, 'Undecided', _selectedAddiction),
              buildFrequencyOption(4, 'Disagree', _selectedAddiction),
              buildFrequencyOption(5, 'Strongly Disagree', _selectedAddiction),
            ],
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget buildFrequencyOption(int value, String label, int groupValue) {
    return Flexible(
      child: Column(
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (newValue) {
              setState(() {
                _selectedAddiction = newValue as int;
              });
            },
          ),
          Text(label),
        ],
      ),
    );
  }
}
