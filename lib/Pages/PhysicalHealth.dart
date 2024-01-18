import 'package:flutter/material.dart';
import '../Widget/Physical Health/PhysicalEngagement.dart';
import '../Widget/Physical Health/NoticePhysicalChange.dart';
import '../Widget/Physical Health/AffectedPhysicalHealth.dart';
import 'MentalHealth.dart';

class PhysicalHealth extends StatefulWidget {
  @override
  _PhysicalHealthState createState() => _PhysicalHealthState();
}

class _PhysicalHealthState extends State<PhysicalHealth> {
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
                MaterialPageRoute(builder: (context) => MentalHealth()));
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
        title: Text('Physical Health'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhysicalEngagement(),
            SizedBox(height: 16.0),
            NoticePhysicalChange(),
            SizedBox(height: 16.0),
            AffectedPhysical(),
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
