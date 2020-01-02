import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(
          'First Page',
          style: new TextStyle(
            fontSize: 24.0,
            color: Colors.purple
          ),
        ),
      )
    );
  }
}