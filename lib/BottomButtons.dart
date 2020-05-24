import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomButton extends StatelessWidget {
  BottomButton({Key key, this.icon, this.content }) : super(key:key);

  final IconData icon;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width / 4,
      child: Card(
        elevation: 0,
        color: Color(0xFFa85fc9),
        child: FlatButton(
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  content,
                  style: GoogleFonts.arimo(color: Colors.white,fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
