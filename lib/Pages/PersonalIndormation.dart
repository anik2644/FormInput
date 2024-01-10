import 'package:flutter/material.dart';

import 'SocialMediaUsage.dart';



class PersonalInformation extends StatefulWidget {
  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMediaUsage()));
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
        title: Text('Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
             children: [
            Text(
              'Enter your university name:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _universityController,
              decoration: InputDecoration(
                hintText: 'e.g., My University',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
          ])),

            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Age:',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          hintText: 'e.g., 18',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16.0),
                    ])),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select your gender:',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      RadioListTile(
                        title: Text('Male'),
                        value: 'Male',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Female'),
                        value: 'Female',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Other'),
                        value: 'Other',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select your Academic Year:',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      RadioListTile(
                        title: Text('1st'),
                        value: '1st',
                        groupValue: _acYear,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('2nd'),
                        value: '2nd',
                        groupValue: _acYear,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('3rd'),
                        value: '3rd',
                        groupValue: _acYear,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('4th'),
                        value: '4th',
                        groupValue: _acYear,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value.toString();
                          });
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform action with selected gender
                  print('Selected gender: $_selectedGender');
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
