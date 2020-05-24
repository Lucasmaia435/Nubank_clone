import 'package:flutter/material.dart';
import 'package:nubank_app/BottomButtons.dart';

class RowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      height: MediaQuery.of(context).size.height / 7,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          BottomButton(
            icon: Icons.person_outline,
            content: "Indicar amigos",
          ),
          BottomButton(
            icon: Icons.phone_iphone,
            content: "Recarga de celular",
          ),
          BottomButton(
            icon: Icons.local_atm,
            content: "Cobrar",
          ),
          BottomButton(
            icon: Icons.monetization_on,
            content: "Depositar",
          ),
          BottomButton(
            icon: Icons.person_outline,
            content: "Indicar amigos",
          ),
          BottomButton(
            icon: Icons.person_outline,
            content: "Indicar amigos",
          ),
        ],
      ),
    );
  }
}
