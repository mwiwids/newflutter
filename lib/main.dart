import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContohBottomSheet(),
    );
  }
}

class ContohBottomSheet extends StatefulWidget {
  @override
  _ContohBottomSheetState createState() => _ContohBottomSheetState();
}

class _ContohBottomSheetState extends State<ContohBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Bottom Sheet"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  child: Text("Contoh BottomSheet Ver.  1"),
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) =>
                          customBottomSheet(context))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  child: Text("Contoh BottomSheet Ver. 2"),
                  onTap: () => showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) =>
                          custom2BottomSheet(context))),
            ),
          ],
        ),
      ),
    );
  }

  Widget customBottomSheet(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo),
          title: Text('Photo'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.music_note),
          title: Text('Music'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget custom2BottomSheet(BuildContext context) {
    return Container(
      height: 350.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0))),
        child: Center(
          child: Text("Contoh Custom BottomSheet"),
        ),
      ),
    );
  }
}
