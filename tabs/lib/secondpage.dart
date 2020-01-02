import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(
          'Second Page',
          style: new TextStyle(
            fontSize: 24.0,
            color: Colors.purple
          ),
        ),
      )
    );
  }
}