import 'package:flutter/material.dart';

import 'PersonalIndormation.dart';


class EmailInput extends StatefulWidget {
  @override
  _EmailInputState createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Use a regular expression for email validation
                  String pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform your action with the validated email
                    String email = _emailController.text;
                    print('Valid email: $email');

                    Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformation()));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            _previousPage();
          } else if (index == 1) {
            _nextPage();
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


    );
  }



  void _nextPage() {
    // Navigate to the next page
     Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformation()));
  }

  void _previousPage() {
    // Pop the current page
    Navigator.pop(context);
  }


}
