import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Column'),
      ),
      body: ColumnDemo(),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.red,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.green,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.blue,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        )
      ],
    );
  }
}
