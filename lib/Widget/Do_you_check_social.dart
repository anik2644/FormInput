import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Do_you_check_social extends StatefulWidget {
  const Do_you_check_social({super.key});

  @override
  State<Do_you_check_social> createState() => _Do_you_check_socialState();
}

class _Do_you_check_socialState extends State<Do_you_check_social> {
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
            'Do you check social networking sites during lectures or study sessions?',
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
                if (groupValue == _selectedFrequency1) {
                  _selectedFrequency1 = newValue as int;
                } else {
                  _selectedFrequency2 = newValue as int;
                }
              });
            },
          ),
          Text(label),
        ],
      ),
    );
  }
}
