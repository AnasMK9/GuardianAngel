import 'package:flutter/material.dart';
import 'Constants.dart';

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

class ActivateButton extends StatelessWidget {
  ActivateButton({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipOval(
        child: Material(
          color: kMainSafeColor, // button color
          child: InkWell(
            splashColor: Colors.red, // inkwell color

            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Icon(
                  icon,
                  size: 80,
                  color: Colors.white,
                )),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
