import 'package:flutter/material.dart';

class CardIntroduction extends StatelessWidget {
  const CardIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Your HealthID is securely created through Blockchain",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "You can use this HealthID to access all your health\ninformation, and share them privately.",
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
