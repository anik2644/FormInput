import 'package:flutter/material.dart';
import '../Widget/Mental Health/FeelingSocialMedia.dart';
import '../Widget/Mental Health/LifeComparison.dart';
import '../Widget/Mental Health/AffectedMentalHealth.dart';
import '../Widget/Mental Health/SocialMediaExperiences.dart';
import 'AcademicPerformance.dart';
import 'Feedback.dart';

class MentalHealth extends StatefulWidget {
  @override
  _MentalHealthState createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
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
                MaterialPageRoute(builder: (context) => AcademicPerformance() ));
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => AcademicPerformance()));
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
        title: Text('Mental Health'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AffectedMentalHealth(),
            SizedBox(height: 16.0),
            SocialMediaExperiences(),
            SizedBox(height: 16.0),
            LifeComparison(),
            SizedBox(height: 16.0),
            FeelingSocialMedia(),
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
