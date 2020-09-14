import 'package:flutter/material.dart';
import 'CustomWidgets.dart';
import 'Constants.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian Angel',
      theme: ThemeData(
          //    canvasColor: Colors.white
          ),
      initialRoute: '/',
      routes: {'/': (context) => Homepage()},
    );
    ;
  }
}

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

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> tabs = [
    CustomPage(child: Text('Alerts')),
    CustomPage(child: Text('History')),
    homescreen(),
    ContactsScreen(),
    CustomPage(child: Text('Profile')),
  ];

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Guardian Angel')),
        backgroundColor: kMainSafeColor,
      ),
      body: SafeArea(child: tabs[currentIndex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: kMainSafeColor),
        child: Container(
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                title: Text('Alerts'),
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                  title: Text('History'), icon: Icon(Icons.replay)),
              BottomNavigationBarItem(
                title: Text(
                  'Home',
                ),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  title: Text('Contacts'), icon: Icon(Icons.contacts)),
              BottomNavigationBarItem(
                  title: Text('Profile'), icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
