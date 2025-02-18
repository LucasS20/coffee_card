import 'package:flutter/material.dart';

class CoffePrefs extends StatefulWidget {
  const CoffePrefs({super.key});

  @override
  State<CoffePrefs> createState() => _CoffePrefsState();
}

class _CoffePrefsState extends State<CoffePrefs> {
  int strength = 0;
  int sugars = 0;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 0;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Text("Strength:"),
          Text('$strength'),
          Image.asset(
            "assets/img/coffee_bean.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(child: SizedBox()),
          TextButton(
              onPressed: increaseStrength,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              child: const Text("+"))
        ]),
        Row(
          children: [
            const Text("Sugars:"),
            Text('$sugars'),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            TextButton(
                onPressed: increaseSugars,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white),
                child: const Text("+"))
          ],
        )
      ],
    );
  }
}
