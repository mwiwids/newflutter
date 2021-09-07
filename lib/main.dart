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
        appBar: AppBar(title: Text("SFA Meet 02 - Row")),
        body: RowPage(),
      ),
    );
  }
}

class RowPage extends StatefulWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
