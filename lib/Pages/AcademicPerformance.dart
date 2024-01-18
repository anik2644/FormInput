import 'package:fahimbhai/Widget/Mental%20Health/SocialMediaExperiences.dart';
import 'package:flutter/material.dart';
import '../Widget/Academic Performance/AcademicDeadlines.dart';
import '../Widget/Academic Performance/AcademicGradeChallenges.dart';
import '../Widget/Academic Performance/AffectedAcademic.dart';
import '../Widget/Academic Performance/GpaImpact.dart';
import '../Widget/Academic Performance/RatingAcademicPerformance.dart';
import '../Widget/Academic Performance/StudySocialMediaFrequency.dart';
import 'package:fahimbhai/Pages/Feedback.dart';

class AcademicPerformance extends StatefulWidget {
  @override
  _AcademicPerformanceState createState() => _AcademicPerformanceState();
}

class _AcademicPerformanceState extends State<AcademicPerformance> {
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
                MaterialPageRoute(builder: (context) => FFeedback() ));
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
        title: Text('Academic Performance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AffectedAcademic(),
            SizedBox(height: 16.0),
            StudySocialMediaFrequency(),
            SizedBox(height: 16.0),
            AcademicGradeChallenges(),
            SizedBox(height: 16.0),
            SocialMediaExperiences(),

            SizedBox(height: 16.0),
            AcademicDeadlines(),
            SizedBox(height: 16.0),
            GpaImpact(),
            SizedBox(height: 16.0),

          ],
        ),
      ),
    );
  }
}
