import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade100),
        containerOlustur('A', Colors.orange.shade200),
        containerOlustur('R', Colors.orange.shade300),
        containerOlustur('T', Colors.orange.shade400)
      ],
    );
  }

  Column dersleriColumnuOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8),
              width: 75,
              height: 75,
              color: Colors.orange.shade200,
              child: Text(
                'E',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade300,
              child: Text(
                'R',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade400,
              child: Text(
                'S',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade500,
              child: Text(
                'L',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade600,
              child: Text(
                'E',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade700,
              child: Text(
                'R',
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: 75,
              height: 75,
              color: Colors.orange.shade800,
              child: Text(
                'İ',
              )),
        )
      ],
    );
  }

  Container containerOlustur(String harf, Color renk) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Dersleri'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            dartRowunuOlustur(),
            Expanded(child: dersleriColumnuOlustur()),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            focusColor: Colors.orange,
            onPressed: () {
              debugPrint("TIKLANDI.");
            },
            child: Icon(Icons.alarm, color: Colors.white)),
      ),
    );
  }
}
