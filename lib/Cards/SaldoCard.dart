import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank_app/user_info.dart';

class SaldoCard extends StatefulWidget {
  @override
  _SaldoCardState createState() => _SaldoCardState();
}

class _SaldoCardState extends State<SaldoCard> {
  String nome;
  var saldoValue;
  String msg;
  IconData saldoVisibility = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    nome = user['Nome'];
    saldoValue = user['Saldo'];
    msg = user['Msg'];

    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 25, 30, 0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.grey,
                    ),
                    Text(
                      "  Conta",
                      style: GoogleFonts.sourceSansPro(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    FlatButton(
                      child: Container(
                        width: 0,
                        child:
                          Icon(
                            saldoVisibility,
                            color: Colors.grey,
                          ),
                      ),
                      onPressed: () {
                        if (saldoVisibility == Icons.visibility) {
                          setState(() {
                            saldoVisibility = Icons.visibility_off;
                          });
                        } else {
                          setState(() {
                            saldoVisibility = Icons.visibility;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 50, 40, 0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Saldo disponível',
                      style: GoogleFonts.arimo(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'R\$\ $saldoValue',
                      style: GoogleFonts.arimo(
                        fontSize: 30,
                        color: saldoVisibility == Icons.visibility
                            ? Colors.black
                            : Colors.black.withOpacity(0),
                        backgroundColor: saldoVisibility == Icons.visibility
                            ? Colors.white
                            : Colors.grey[100],
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('click');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.credit_card, color: Colors.grey),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        msg,
                        style: GoogleFonts.arimo(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
