import 'package:flutter/material.dart';
import 'Constants.dart';


class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,

                      child: RawMaterialButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: kLabelStyle.color,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Full name", style: TextStyle(
                                fontSize: 20,
                                color: kLabelStyle.color
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(height: 60,)

                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 1,



            child: Center(
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Add contact'),
                icon: Icon(Icons.add),
                backgroundColor: kMainSafeColor,

              ),
            ),
          ),

        ],
      ),
    );
  }
}