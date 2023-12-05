import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:swipable_card_toturial/models/card.dart';

import '../util/tinder_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardModel> cardList = [
    CardModel(
      name: 'MMDREZA',
      icon: Icons.flutter_dash_outlined,
    ),
    CardModel(
      name: 'MMD',
      icon: Icons.javascript_rounded,
    ),
    CardModel(
      name: 'HABIB',
      icon: Icons.help,
    ),
    CardModel(
      name: 'ALI',
      icon: Icons.motorcycle_rounded,
    ),
    CardModel(
      name: 'MAHDI',
      icon: Icons.javascript,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Flexible(
          child: CardSwiper(
            cardBuilder: (context, index, horizontalOffsetPercentage,
                    verticalOffsetPercentage) =>
                TinderCard(
              color: Colors.deepPurple,
              icon: cardList[index].icon,
              title: cardList[index].name,
            ),
            cardsCount: cardList.length,
          ),
        ),
      ),
    );
  }
}
