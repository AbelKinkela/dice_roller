import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        //const SizedBox(height: 20), this can be used instead of top padding bellow
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
          child: const StyledText("Roll Dice"),
        )
      ],
    );
  }
}
