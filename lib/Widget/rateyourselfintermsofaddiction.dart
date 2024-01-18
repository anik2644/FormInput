


import 'package:flutter/material.dart';

class rateyourselfintermsofaddiction extends StatefulWidget {
  const rateyourselfintermsofaddiction({super.key});

  @override
  State<rateyourselfintermsofaddiction> createState() => _rateyourselfintermsofaddictionState();
}

class _rateyourselfintermsofaddictionState extends State<rateyourselfintermsofaddiction> {
  int _selectedAddiction = 0;
  int _addictionRating = 0;

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
          // Show the next set of options only if the user indicates addiction
          if (_selectedAddiction == 1 || _selectedAddiction == 2)
            Column(
              children: [
                Text(
                  'If you are addicted to social media, then rate yourself in terms of addiction:',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildFrequencyOption(1, 'Strongly Addicted', _addictionRating),
                    buildFrequencyOption(2, '2', _addictionRating),
                    buildFrequencyOption(3, '3', _addictionRating),
                    buildFrequencyOption(4, '4', _addictionRating),
                    buildFrequencyOption(5, '5', _addictionRating),
                  ],
                ),
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
                if (_selectedAddiction == 1 || _selectedAddiction == 2) {
                  _addictionRating = newValue as int;
                } else {
                  _selectedAddiction = newValue as int;
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
