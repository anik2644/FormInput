//PurposeSelection
import 'package:flutter/material.dart';

import '../Widgett/CircularCirle.dart';

class PurposeSelection extends StatefulWidget {
  @override
  _PurposeSelectionState createState() => _PurposeSelectionState();
}

class _PurposeSelectionState extends State<PurposeSelection> {
  int selectedOption = 0;
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
                'How do you primarily use social media?',
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
                                    'For connecting with friends and family',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),

                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircularRadioChoice(
                                          value: 1, label: 'Always'),
                                      CircularRadioChoice(
                                          value: 2, label: 'Often'),
                                      CircularRadioChoice(
                                          value: 3, label: 'Sometimes'),
                                      CircularRadioChoice(
                                          value: 4, label: 'Rarely'),
                                      CircularRadioChoice(
                                          value: 5, label: 'Never'),
                                    ],
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
                                    'For entertainment',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CircularRadioChoice(
                                          value: 1, label: 'Always'),
                                      CircularRadioChoice(
                                          value: 2, label: 'Often'),
                                      CircularRadioChoice(
                                          value: 3, label: 'Sometimes'),
                                      CircularRadioChoice(
                                          value: 4, label: 'Rarely'),
                                      CircularRadioChoice(
                                          value: 5, label: 'Never'),
                                    ],
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
                                    'For educational purposes',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CircularRadioChoice(
                                          value: 1, label: 'Always'),
                                      CircularRadioChoice(
                                          value: 2, label: 'Often'),
                                      CircularRadioChoice(
                                          value: 3, label: 'Sometimes'),
                                      CircularRadioChoice(
                                          value: 4, label: 'Rarely'),
                                      CircularRadioChoice(
                                          value: 5, label: 'Never'),
                                    ],
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
                                    'For news updates',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CircularRadioChoice(
                                          value: 1, label: 'Always'),
                                      CircularRadioChoice(
                                          value: 2, label: 'Often'),
                                      CircularRadioChoice(
                                          value: 3, label: 'Sometimes'),
                                      CircularRadioChoice(
                                          value: 4, label: 'Rarely'),
                                      CircularRadioChoice(
                                          value: 5, label: 'Never'),
                                    ],
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
                                    'For business purposes',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 16.0),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CircularRadioChoice(
                                          value: 1, label: 'Always'),
                                      CircularRadioChoice(
                                          value: 2, label: 'Often'),
                                      CircularRadioChoice(
                                          value: 3, label: 'Sometimes'),
                                      CircularRadioChoice(
                                          value: 4, label: 'Rarely'),
                                      CircularRadioChoice(
                                          value: 5, label: 'Never'),
                                    ],
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
