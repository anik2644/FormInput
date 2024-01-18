import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaFrequency extends StatefulWidget {
  const SocialMediaFrequency({super.key});

  @override
  State<SocialMediaFrequency> createState() => _SocialMediaFrequencyState();
}

class _SocialMediaFrequencyState extends State<SocialMediaFrequency> {
  int _selectedFrequency = 0;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How often do you use social media platforms?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFrequencyOption(1, 'Rarely or Never'),
              SizedBox(width: 10,),
              buildFrequencyOption(2, 'Once a week'),
              SizedBox(width: 10,),
              buildFrequencyOption(3, 'A few times a week'),
              SizedBox(width: 10,),
              buildFrequencyOption(4, 'Once a day'),
              SizedBox(width: 10,),
              buildFrequencyOption(5, 'Several times a day'),
            ],
          ),
          SizedBox(height: 16.0),

        ],
      ),
    );
  }


  Widget buildFrequencyOption(int value, String label) {
    return Flexible(
      child: Column(
        children: [
          Radio(
            value: value,
            groupValue: _selectedFrequency,
            onChanged: (newValue) {
              setState(() {
                _selectedFrequency = newValue as int;
              });
            },
          ),
          Text(label),

        ],

      ),
    );
  }
}
