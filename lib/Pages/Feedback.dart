import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'SocialMediaUsage.dart';
import 'email form.dart';



class FFeedback extends StatefulWidget {
  @override
  _FFeedbackState createState() => _FFeedbackState();
}

class _FFeedbackState extends State<FFeedback> {
  TextEditingController _userInputController = TextEditingController();

  int usage = 1;
  String s = "";
  String ss = " daily";

  @override
  void initState() {

    Random random = Random();
    int randomNumber = random.nextInt(60) + 1;

    if(randomNumber<=15)
      {
        s = "30 minutes";
      }
    else if(randomNumber<=30)
    {
      s = "45 minutes";
    }
    else if(randomNumber<=50)
    {
      s = "1 hour";
    }
    else
      {
        s= "2 hours";
      }

    s = "Maximum "+ s + ss;
    print(randomNumber);
    print(s);
    setState(() {
      s= s;
    });
    // TODO: implement initState
    super.initState();
  }
  String summary = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Survey Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
            color: Colors.white,
            child: Text(
              "Social Media Usage Recommendation",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Replace with your preferred text color
              ),
            ),
          ),
            SizedBox(height: 30.0),
            Container(
              color: Colors.white,
              child: Text(
                "According to the survey",
                style: TextStyle(
                  fontSize: 23.0,
                  //fontWeight: FontWeight.w100,
                  color: Colors.black45, // Replace with your preferred text color
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.0,
                  height:60.0,
                  color: Colors.grey,
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommendation Daily \nSocial Media Usage",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.0), // Adjust the spacing between the two Text widgets
                    Text(
                      s,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            )

            ,
            SizedBox(height: 40.0),
            Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          String userResponse = _userInputController.text;

                          summary = generateSummary(userResponse);
                          setState(() {
                            Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                builder: (_) => EmailInput(),
                              ),
                            );

                          }); // Update the UI
                        },
                        child: Text('Survey Again'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Replace with your custom color
                        ),
                      ),
                    ),
                    SizedBox(width: 25,), // Adjust the width as needed
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          String userResponse = _userInputController.text;
                          // Process user response and generate summary
                          summary = generateSummary(userResponse);
                          setState(() {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => SocialMediaUsage()));
                          }); // Update the UI
                        },
                        child: Text('Edit Response'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Replace with your custom color
                        ),
                      ),
                    ),
                  ],
                ),
              )
              ,
            ),
            SizedBox(height: 16.0),

          ],
        ),
      ),
    );
  }
/*
                    SizedBox(height: 12,),
                    Text(
                      "2 hours daily",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),

 */
  String generateSummary(String userResponse) {
    // Your logic for generating a summary goes here
    // For example, you can simply return the user's response for now
    return userResponse;
  }
}
