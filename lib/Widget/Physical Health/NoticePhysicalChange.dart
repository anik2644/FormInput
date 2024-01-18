import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticePhysicalChange extends StatefulWidget {
  const NoticePhysicalChange({super.key});

  @override
  State<NoticePhysicalChange> createState() => _NoticePhysicalChangeState();
}

class _NoticePhysicalChangeState extends State<NoticePhysicalChange> {
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
            'Have you noticed any changes in your physical health (e.g., sleep patterns, energy levels) that you attribute to your social networking site usage?',
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
