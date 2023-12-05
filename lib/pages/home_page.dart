import 'package:flutter/material.dart';
import 'package:swipable_card_toturial/util/tinder_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      body: Center(
        child: Stack(
          children: [
            // tider card stack
            TinderCard(color: Colors.deepPurple),
            TinderCard(color: Colors.blue),
            TinderCard(color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
