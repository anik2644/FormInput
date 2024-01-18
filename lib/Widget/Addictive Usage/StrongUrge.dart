import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StrongUrge extends StatefulWidget {
  const StrongUrge({super.key});

  @override
  State<StrongUrge> createState() => _StrongUrgeState();
}

class _StrongUrgeState extends State<StrongUrge> {
  int _selectedFrequency3 = 0;
  int _selectedFrequency1 = 0;
  int _selectedFrequency2 = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Have you ever felt a strong urge or compulsion to use social networking sites?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, 'Always', _selectedFrequency3),
              buildFrequencyOption(2, 'Often', _selectedFrequency3),
              buildFrequencyOption(3, 'Sometimes', _selectedFrequency3),
              buildFrequencyOption(4, 'Rarely', _selectedFrequency3),
              buildFrequencyOption(5, 'Never', _selectedFrequency3),
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
                _selectedFrequency3 = newValue as int;
              });
            },
          ),
          Text(label),
        ],
      ),
    );
  }
}
