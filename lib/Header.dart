import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_info.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  String nome = user['Nome'];
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Text(
            nome,
            style: GoogleFonts.sourceSansPro(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: () {},
            color: Color.fromRGBO(0, 0, 0, 0.4),
          ),
        ],
      ),
    );
  }
}
