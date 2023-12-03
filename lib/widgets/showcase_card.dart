import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'dart:math' as math;

class ShowcaseCard extends StatelessWidget {
  final String cardHolderName;
  final String cardNumber;
  final int cardTier;
  final int patternIndex;

  const ShowcaseCard({
    super.key,
    required this.cardHolderName,
    required this.cardNumber,
    required this.cardTier,
    required this.patternIndex,
  });

  @override
  Widget build(BuildContext context) {
    String pattern = patternList[patternIndex]["pattern"];
    bool isDarkTheme = patternList[patternIndex]["isDark"];

    return Container(
      alignment: Alignment(0, 1),
      height: MediaQuery.of(context).size.width / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Transform.rotate(
        angle: -5 * math.pi / 180,
        child: Container(
          alignment: Alignment(0, .5),
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                child: Image.asset(
                  "assets/card_background/$pattern.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 2 * (MediaQuery.of(context).size.height / 5) / 3,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 2 * (MediaQuery.of(context).size.height / 5) / 3,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const Alignment(-.85, -.4),
                          child: isDarkTheme
                              ? SvgPicture.asset("assets/images/logo_light.svg")
                              : SvgPicture.asset("assets/images/logo_dark.svg"),
                        ),
                        Align(
                          alignment: const Alignment(.85, -.4),
                          child: isDarkTheme
                              ? SvgPicture.asset(
                                  "assets/images/sample_qr_light.svg")
                              : SvgPicture.asset(
                                  "assets/images/sample_qr_dark.svg"),
                        ),
                        Align(
                          alignment: const Alignment(0, .8),
                          child: Text(
                            "1253  5432  3521  3090",
                            style: GoogleFonts.spaceGrotesk(
                                fontSize: 18,
                                color:
                                    isDarkTheme ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 5) / 2.5,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                      color: isDarkTheme ? Colors.black : Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-.8, -.7),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Name\n",
                                    style: GoogleFonts.spaceGrotesk(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                  text: cardHolderName,
                                  style: GoogleFonts.spaceGrotesk(
                                      fontSize: 13,
                                      color: isDarkTheme
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(.8, -.7),
                          child: RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Tier\n",
                                    style: GoogleFonts.spaceGrotesk(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                  text: cardTier.toString(),
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 13,
                                    color: isDarkTheme
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, .85),
                          child: Text(
                            "YOUR DENCENTRALIZED BLOCKCHAIN HEALTH ID",
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 11,
                              color: isDarkTheme ? Colors.white : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> patternList = [
  {"pattern": "pattern_1", "isDark": true},
  {"pattern": "pattern_2", "isDark": true},
  {"pattern": "pattern_3", "isDark": false},
  {"pattern": "pattern_4", "isDark": false},
];
