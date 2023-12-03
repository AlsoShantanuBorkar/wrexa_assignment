import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'dart:math' as math;

class ShareJourneyCard extends StatelessWidget {
  const ShareJourneyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 8),
              child: Transform.rotate(
                angle: -45 * math.pi / 180,
                child: const Icon(
                  Icons.send_rounded,
                  size: 25,
                ),
              ),
            ),
            const Text(
              "Share with your friends, on this journey",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Container(
              height: 50,
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                "assets/images/Group.svg",
                height: 40,
                width: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
