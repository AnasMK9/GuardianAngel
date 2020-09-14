import 'package:flutter/material.dart';
import 'CustomWidgets.dart';
import 'Constants.dart';
import 'homescreen.dart';
import 'ContactsScreen.dart';
import 'package:gangel/History.dart';

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
      theme: ThemeData.dark().copyWith(

      ),
      initialRoute: '/',
      routes: {'/': (context) => Homepage()},
    );
    ;
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> tabs = [
    CustomPage(child: Text('Alerts')),
    HistoryScreen(),
    HomeScreen(),
    ContactsScreen(),
    CustomPage(child: Text('Profile')),
  ];

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Guardian Angel')),
       // backgroundColor: activeColor,
      ),
      body: SafeArea(child: tabs[currentIndex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(

        ),
        child: Container(
          child: BottomNavigationBar(
            fixedColor: Colors.grey
            ,
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
