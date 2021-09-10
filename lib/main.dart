import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContohDialog(),
    );
  }
}

class ContohDialog extends StatefulWidget {
  @override
  _ContohDialogState createState() => _ContohDialogState();
}

class _ContohDialogState extends State<ContohDialog> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Contoh Dialog"),
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
                  child: Text("Contoh AlertDialog"),
                  onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => alertDialog(context)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text("AlertDialog Style"),
                  onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          alertDialogModifikasi(context)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: InkWell(
                      child: Text("Custom AlertDialog"),
                      onTap: () => showDialog(
                          useSafeArea: true,
                          context: context,
                          builder: (BuildContext context) =>
                              customAlertDialog(context))),
                ),
              )
            ],
          ),
        ),
      );

  Widget alertDialog(BuildContext context) {
    return AlertDialog(
      title: Text("Contoh AlertDialog"),
      actions: [
        InkWell(
          child: Text("Ya"),
          onTap: () => Navigator.pop(context),
        ),
        InkWell(
          child: Text("Tidak"),
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }

  Widget alertDialogModifikasi(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Text("Ini adalah Contoh Konten dari AlertDialog"),
      ),
      title: Text("Contoh AlertDialog"),
      actions: [
        RaisedButton(
            color: Colors.amberAccent,
            child: Text("Ya"),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        RaisedButton(
            color: Colors.green,
            child: Text("Tidak"),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ],
    );
  }

  Widget customAlertDialog(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0)),
        ),
        child: Container(
          height: 180,
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                child: Text("Contoh Custom Dialog"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                        color: Colors.amberAccent,
                        child: Text("Ya"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                        color: Colors.green,
                        child: Text("Tidak"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
