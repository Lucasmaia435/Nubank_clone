import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank_app/user_info.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String nome;
  var saldoValue;
  String msg;
  IconData saldoVisibility = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    nome = user['Nome'];
    saldoValue = user['Saldo'];
    msg = user['Msg'];
    var limTotal = user['Lim_total'];
    var limUsado = user['Lim_usado'];

    var colorBarHeight = MediaQuery.of(context).size.height / 3.25;

    var multUsado = ((100 * limUsado) / limTotal);
    var multTotal = (100 - multUsado);

    multUsado /= 100;
    multTotal /= 100;

    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 98,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 25, 30, 0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "  Cartão de crédito",
                                  style: GoogleFonts.sourceSansPro(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
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
                                  'FATURA ATUAL',
                                  style: GoogleFonts.arimo(
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'R\$\ ${limTotal - limUsado}',
                                  style: GoogleFonts.arimo(
                                    fontSize: 30,
                                    color: Colors.cyan,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Limite disponível ',
                                    style: GoogleFonts.arimo(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            "R\$\ ${limTotal - (limTotal - limUsado)}",
                                        style: GoogleFonts.arimo(
                                          color: Colors.lightGreen,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(2),
                            ),
                          ),
                          child: SizedBox(
                            height: colorBarHeight * multTotal,
                            width: 100,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(2),
                            ),
                          ),
                          child: SizedBox(
                            height: colorBarHeight * multUsado,
                            width: 100,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
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
