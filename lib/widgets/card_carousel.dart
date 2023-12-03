import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:wrexa_assignment/widgets/showcase_card.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({super.key, required this.noOfCards});
  final int noOfCards;
  @override
  Widget build(BuildContext context) {
    Set<int> randomList = {};
    math.Random random = math.Random();
    while (randomList.length < noOfCards) {
      int randomNo = random.nextInt(noOfCards);
      if (!randomList.contains(randomNo)) {
        randomList.add(randomNo);
      }
    }
    return SizedBox(
      height: MediaQuery.of(context).size.width / 1.6,
      child: ListView.builder(
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return Center(
            child: ShowcaseCard(
              cardHolderName: userList[index]["name"],
              cardNumber: userList[index]["HealthID"],
              cardTier: userList[index]["Tier"],
              patternIndex: randomList.toList()[index] % 4,
            ),
          );
        },
      ),
    );
  }
}

Map<String, dynamic> d = {
  "name": "John Doe",
  "HealthID": "1234 1234 1234 1234",
  "Tier": 1
};

List<Map<String, dynamic>> userList = List.generate(10, (index) => d);
