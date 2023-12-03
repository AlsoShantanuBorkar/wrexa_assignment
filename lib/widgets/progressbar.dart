import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_outlined,
              size: 30,
            ),
          ),
          const Spacer(),
          Container(
              width: MediaQuery.of(context).size.width / 1.75,
              height: 15,
              alignment: const Alignment(0.95, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const RadialGradient(
                  center: Alignment(-1, -1),
                  radius: 3,
                  colors: [
                    Color.fromRGBO(197, 222, 253, 1),
                    Color.fromRGBO(114, 165, 246, 1),
                  ],
                ),
              ),
              child: SvgPicture.asset(
                "assets/images/Star.svg",
                height: 10,
                width: 10,
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
