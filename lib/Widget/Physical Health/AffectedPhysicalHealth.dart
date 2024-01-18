//PurposeSelection
import 'package:flutter/material.dart';

import '../../Widgett/CircularCirle.dart';

class AffectedPhysical extends StatefulWidget {
  @override
  _AffectedPhysicalState createState() => _AffectedPhysicalState();
}

class _AffectedPhysicalState extends State<AffectedPhysical> {
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
                'Has your social media usage affected your physical health in any of the following ways?',
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
                                    'Disrupted sleep patterns/ Insomnia',
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
                                    'Eye Strain',
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
                                    'Headaches',
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
                                    'Poor posture',
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
                                    'Shoulder pain',
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
                                    'Weight gain',
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
