import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AffectedMentalHealth extends StatefulWidget {
  const AffectedMentalHealth({super.key});

  @override
  State<AffectedMentalHealth> createState() => _AffectedMentalHealthState();
}

class _AffectedMentalHealthState extends State<AffectedMentalHealth> {
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
            'Do you feel that social media affects your mental health?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, 'Strongly Agree', _selectedFrequency3),
              buildFrequencyOption(2, 'Agree', _selectedFrequency3),
              buildFrequencyOption(3, 'Undecided', _selectedFrequency3),
              buildFrequencyOption(4, 'Disagree', _selectedFrequency3),
              buildFrequencyOption(5, 'Strongly Disagree', _selectedFrequency3),
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
