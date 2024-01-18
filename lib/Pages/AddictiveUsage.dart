import 'package:flutter/material.dart';
import '../Widget/Addictive Usage/StrongUrge.dart';
import '../Widget/Addictive Usage/ControlSocialMedia.dart';
import '../Widget/Addictive Usage/ReduceSocialMedia.dart';
import 'PhysicalHealth.dart';

class AddictiveUsage extends StatefulWidget {
  @override
  _AddictiveUsageState createState() => _AddictiveUsageState();
}

class _AddictiveUsageState extends State<AddictiveUsage> {
  String _selectedGender = '';
  String _acYear = '';
  TextEditingController _universityController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhysicalHealth()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: 'Next',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Addictive Usage and Behavior'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StrongUrge(),
            SizedBox(height: 16.0),
            ControlSocialMedia(),
            SizedBox(height: 16.0),
            ReduceSocialMedia(),
            SizedBox(height: 16.0),
            // Center(
            //   // child: ElevatedButton(
            //   //   // onPressed: () {
            //   //   //   // Perform action with selected gender
            //   //   //   // print('Selected gender: $_selectedGender');
            //   //   // },
            //   //   // child: Text('Submit'),
            //   // ),
            // ),
          ],
        ),
      ),
    );
  }
}
