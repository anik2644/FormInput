
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/email form.dart';



class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        children: [
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height / 10),
          Text(
            'Questionnaire Survey on Addictive Usage of Social Networking Sites and their Impact on University Students Physical Health, Mental Health And Academic Performance',
          ),
          SizedBox(height: 30.0),

          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account  ',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => EmailInput(),
                    ),
                  );
                },
                child: Text(
                  'Contribute',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .secondary,
                  ),
                ),
              ),

              SizedBox(height: 35,),

            ],
          ),
        ],

      ),
    );
  }


}


