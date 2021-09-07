import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Column")),
        body: ColumnPage(),
      ),
    );
  }
}

class ColumnPage extends StatefulWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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

