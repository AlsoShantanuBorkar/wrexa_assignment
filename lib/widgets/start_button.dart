import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            spreadRadius: 15,
            offset: Offset(0, 25),
          )
        ],
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height / 12,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color.fromRGBO(114, 165, 246, 1),
            gradient: const RadialGradient(
              center: Alignment(1, -1),
              radius: 2.5,
              focal: Alignment(.75, -1),
              colors: [
                Color.fromRGBO(197, 222, 253, 1),
                Color.fromRGBO(114, 165, 246, 1),
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 208, 218, 232),
                blurRadius: 4,
                spreadRadius: 4,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: const Text(
            "Get Started",
            style: TextStyle(
              letterSpacing: .5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
