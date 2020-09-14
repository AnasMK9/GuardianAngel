import 'package:flutter/material.dart';
import 'CustomWidgets.dart';
import 'Constants.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool MIC_ACTIVE = true;
  bool GPS_ACTIVE = true;
  DateTime now = DateTime.now();
  String formattedTime = DateFormat.jm().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text(
          //   'Guardian Angel',
          //   style: TextStyle(fontSize: 30),
          // ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Icon(Icons.mic, color: Colors.black, size: 30),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Icon(Icons.gps_fixed, color: Colors.black, size: 30)
                  //   ],
                  // ),
                  Center(
                      child: ActivateButton(
                        icon: Icons.security,
                      )),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  GPS_ACTIVE = !GPS_ACTIVE;
                                });

                              },
                              child: Row(
                                children: [
                                  Icon(Icons.gps_fixed,
                                      color: GPS_ACTIVE
                                          ? kLabelStyle.color
                                          : kInactiveLabelStyle.color),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Irbid, Jordan',
                                    style: GPS_ACTIVE
                                        ? kLabelStyle
                                        : kInactiveLabelStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  MIC_ACTIVE= !MIC_ACTIVE;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.mic,
                                      color: MIC_ACTIVE
                                          ? kLabelStyle.color
                                          : kInactiveLabelStyle.color),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Mic: On',
                                    style: MIC_ACTIVE
                                        ? kLabelStyle
                                        : kInactiveLabelStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Tap to turn on/off',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        Text(
                          formattedTime,
                          style: kLabelStyle,
                        )
                      ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

