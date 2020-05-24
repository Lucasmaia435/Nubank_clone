import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:nubank_app/Cards/CreditCard.dart';
import 'package:nubank_app/Cards/SaldoCard.dart';

List<Widget> cards = [CreditCard(), SaldoCard()];
var currentCard = 0;

class CarouselCards extends StatefulWidget {
  @override
  _CarouselCardsState createState() => _CarouselCardsState();
}

class _CarouselCardsState extends State<CarouselCards> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
        CarouselSlider(
            items: cards,
            viewportFraction: 1.0,
            autoPlay: false,
            enableInfiniteScroll: false,
            aspectRatio: 1.1,
            onPageChanged: (index) {
              setState(() {
                currentCard = index;
              });
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cards.map((url) {
            int index = cards.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentCard == index
                    ? Color.fromRGBO(255, 255, 255, 0.9)
                    : Color.fromRGBO(255, 255, 255, 0.4),
              ),
            );
          }).toList(),
        ),
      ]);
  }
}
