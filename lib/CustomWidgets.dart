import 'package:flutter/material.dart';
import 'Constants.dart';
import 'dart:io';


// class CustomPage extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class CustomPage extends StatefulWidget {

  const CustomPage({
    Key key,

    this.child,
  }) : super(key: key);
  final Widget child;

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20), height: double.infinity, child: widget.child);
  }
}

class ActivateButton extends StatefulWidget {
  ActivateButton({this.icon, this.func});
  final Function func;

  final IconData icon;

  @override
  _ActivateButtonState createState() => _ActivateButtonState();
}

class _ActivateButtonState extends State<ActivateButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipOval(
        child: Material(
          color: safe? kMainSafeColor:Colors.red, // button color
          child: InkWell(
            splashColor: safe ? Colors.red: kMainSafeColor,
            

            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Icon(
                  safe ? Icons.security : Icons.warning,
                  size: 80,
                  color: Colors.white,
                )),
            onTap: () {
              setState(() {


                safe = !safe;
                activeColor = safe ? kMainSafeColor : Colors.red;
              });

            },
          ),
        ),
      ),
    );
  }
}
