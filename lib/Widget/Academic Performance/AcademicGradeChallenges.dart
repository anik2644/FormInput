//PurposeSelection
import 'package:flutter/material.dart';

import '../../Widgett/CircularCirle.dart';

class AcademicGradeChallenges extends StatefulWidget {
  @override
  _AcademicGradeChallengesState createState() => _AcademicGradeChallengesState();
}

class _AcademicGradeChallengesState extends State<AcademicGradeChallenges> {
  List<List<int>> selectedOptions = List.generate(5, (_) => List.filled(1, 0));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Card(
        elevation: 4.0,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Have you ever experienced any of the following due to excessive social media use?',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Decreased grades or academic performance',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),

                                /*  SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 2, label: 'Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Undecided'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Disagree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Disagree'),
                                        ),
                                      ],
                                    ),
                                  ),*/
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // connceting with friend done
                  SizedBox(width: 16),
                  Container(
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Difficulty concentrating',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 2, label: 'Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Undecided'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Disagree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Disagree'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 16),
                  Container(
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Procrastination',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 2, label: 'Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Undecided'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Disagree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Disagree'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 16),
                  Container(
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reduced study time',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 2, label: 'Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Undecided'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Disagree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Disagree'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 16),
                  Container(
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lack of motivation',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 2, label: 'Agree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Undecided'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Disagree'),
                                        ),
                                        Container(
                                          width: 100.0,
                                          child: CircularRadioChoice(
                                              value: 1, label: 'Strongly Disagree'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
