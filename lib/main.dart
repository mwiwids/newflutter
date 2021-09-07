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
        appBar: AppBar(title: Text("SFA Meet 02 - Stack")),
        body: StackPage(),
      ),
    );
  }
}

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      overflow: Overflow.visible,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.yellow,
          ),
          height: 200,
          width: double.infinity,
        ),
        Positioned(
          bottom: -40,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.orange,
            ),
            margin: EdgeInsets.all(8),
            height: 70,
            width: MediaQuery.of(context).size.width - 100,
          ),
        ),
        Positioned(
          bottom: -55,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            margin: EdgeInsets.all(8),
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
