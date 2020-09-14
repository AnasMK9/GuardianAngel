import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(20), child: SituationCard());
  }
}

class SituationCard extends StatefulWidget {
  @override
  _SituationCardState createState() => _SituationCardState();
}

class _SituationCardState extends State<SituationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 2)
          ]),

      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Data',
            style: TextStyle(fontSize: 30, color: kLabelStyle.color),
          ),
          SizedBox(height: 15),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue[100],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1)
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            value: 25,
            onChanged: (double x) {},
            min: 0,
            max: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.fast_rewind,
                size: 50,
              ),
              Icon(Icons.play_arrow, size: 50),
              Icon(Icons.fast_forward, size: 50)
            ],
          ),

        ],
      ),
    );
  }
}
