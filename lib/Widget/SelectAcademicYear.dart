import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcademicYearSelection extends StatefulWidget {
  const AcademicYearSelection({super.key});

  @override
  State<AcademicYearSelection> createState() => _AcademicYearSelectionState();
}

class _AcademicYearSelectionState extends State<AcademicYearSelection> {
  int _selectedFrequency3 = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Academic year:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, '1st', _selectedFrequency3),
              buildFrequencyOption(2, '2nd', _selectedFrequency3),
              buildFrequencyOption(3, '3rd', _selectedFrequency3),
              buildFrequencyOption(4, '4th', _selectedFrequency3),
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
