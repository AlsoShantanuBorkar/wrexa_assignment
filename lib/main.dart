import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:wrexa_assignment/widgets/card_carousel.dart';
import 'package:wrexa_assignment/widgets/card_introduction.dart';
import 'package:wrexa_assignment/widgets/progressbar.dart';
import 'package:wrexa_assignment/widgets/share_journey_card.dart';
import 'dart:math' as math;
import 'package:wrexa_assignment/widgets/start_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Set<int> randomList = {};

  @override
  void initState() {
    math.Random random = math.Random();
    while (randomList.length < 5) {
      int randomNo = random.nextInt(6);
      if (!randomList.contains(randomNo)) {
        randomList.add(randomNo);
      }
    }
    log(randomList.toString());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: [
              Color.fromRGBO(187, 207, 237, 1),
              Color.fromRGBO(246, 219, 191, 1),
              Color.fromRGBO(187, 207, 237, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -.35),
              child: SizedBox(
                height: MediaQuery.of(context).size.width + 10,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.transparent,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 100,
                                  spreadRadius: 0,
                                  blurStyle: BlurStyle.outer)
                            ]),
                      ),
                    ),
                    Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star.svg",
                              height: 10,
                              width: 10,
                            ),
                            SvgPicture.asset(
                              "assets/images/Star.svg",
                              height: 10,
                              width: 10,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -.25),
              child: SizedBox(
                height: MediaQuery.of(context).size.width / 1.8 + 10,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.width / 1.8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.transparent,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 100,
                                  spreadRadius: 0,
                                  blurStyle: BlurStyle.outer)
                            ]),
                      ),
                    ),
                    Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star.svg",
                              height: 10,
                              width: 10,
                            ),
                            SvgPicture.asset(
                              "assets/images/Star.svg",
                              height: 10,
                              width: 10,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  const ProgressBar(),
                  const Spacer(),
                  const CardCarousel(
                    noOfCards: 10,
                  ),
                  const CardIntroduction(),
                  const SizedBox(
                    height: 20,
                  ),
                  const ShareJourneyCard(),
                  const Spacer(),
                  const StartButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
