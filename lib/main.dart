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
        appBar: AppBar(title: Text("SFA Meet 02 - Flexible")),
        body: FlexiblePage(),
      ),
    );
  }
}

class FlexiblePage extends StatefulWidget {
  const FlexiblePage({Key? key}) : super(key: key);

  @override
  _FlexiblePageState createState() => _FlexiblePageState();
}

class _FlexiblePageState extends State<FlexiblePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.red,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.green,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.green,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
            ],
          ),
          Flexible(
            // mengisi full space yang ada
            // karena column, mengabaikkan height yang di set
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              height: 70,
              width: 70,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.purple,
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              height: 70,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
