import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Flexible'),
      ),
      body: FlexibleDemo(),
    );
  }
}

class FlexibleDemo extends StatelessWidget {
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
            // tight : mengisi full space yang ada
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
            // loose : mengisi dengan max size
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
