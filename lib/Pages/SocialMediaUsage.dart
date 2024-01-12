import 'package:fahimbhai/Widget/ChosseUSedSocalMedia.dart';
import 'package:fahimbhai/Widget/SocialMediaFrequency.dart';
import 'package:flutter/material.dart';

import '../Widget/Do_you_check_social.dart';
import '../Widget/feeladdictedtosocialmedia.dart';
import '../Widget/howmanyhoursperday.dart';
import '../Widget/primarilyusersocialmedia.dart';
import '../Widget/rateyourselfintermsofaddiction.dart';
class SocialMediaUsage extends StatefulWidget {
  @override
  _SocialMediaUsageState createState() => _SocialMediaUsageState();
}

class _SocialMediaUsageState extends State<SocialMediaUsage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media Selection'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);

          } else if (index == 1) {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMediaUsage()));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChooseUsedSocalMedia(),

            SizedBox(height: 16.0),
            SocialMediaFrequency(),
            SizedBox(height: 16.0),
            howmanyhoursperday(),
            SizedBox(height: 16.0),
            feeladdictedtosocialmedia(),
            SizedBox(height: 16.0),
            rateyourselfintermsofaddiction(),
            SizedBox(height: 16.0),
            PurposeSelection(),
            Do_you_check_social(),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform action with selected social media
                 // print('Selected social media: $selectedSocialMedia');
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
