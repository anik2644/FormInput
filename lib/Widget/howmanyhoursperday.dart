


import 'package:flutter/material.dart';

class howmanyhoursperday extends StatefulWidget {
  const howmanyhoursperday({super.key});

  @override
  State<howmanyhoursperday> createState() => _howmanyhoursperdayState();
}

class _howmanyhoursperdayState extends State<howmanyhoursperday> {
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
            'On average, how many hours per day do you spend on social networking sites?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, 'Less than 30 mins', _selectedFrequency2),
              buildFrequencyOption(2, '30 mins to 1 hour', _selectedFrequency2),
              buildFrequencyOption(3, '1 to 3 hours', _selectedFrequency2),
              buildFrequencyOption(4, '3 to 5 hours', _selectedFrequency2),
              buildFrequencyOption(5, 'More than 5 hours', _selectedFrequency2),
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
