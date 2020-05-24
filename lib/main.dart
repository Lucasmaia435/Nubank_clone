import 'package:flutter/material.dart';

import 'package:nubank_app/CarouselCards.dart';
import 'package:nubank_app/Header.dart';
import 'package:nubank_app/RowButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Color(0xFF9330ba),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Header(),
              ),
              Flexible(
                flex: 5,
                child: CarouselCards(),
              ),
              RowButton(),
            ],
          ),
        ),
      );
  }
}
