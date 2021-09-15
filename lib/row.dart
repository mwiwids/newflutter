import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Row'),
      ),
      body: RowDemo(),
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        ),
      ],
    );
  }
}
