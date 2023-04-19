import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

/// Note: Edit the variables to change the behavior of the gradient
/// There is no need to change code beyond the variables.
const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomRight;
const defaultGradientColors = [
  Colors.deepPurple,
  Color.fromARGB(255, 160, 118, 234),
  Color.fromARGB(255, 196, 170, 241)
];

/// Do not change code bellow.
class GradientContainer extends StatelessWidget {
  final List<Color> gradientColors;

  ///GradientContainer
  ///Accepts an optional list of colors to use as gradient.
  ///If no list is provided, it uses the default gradient provided by the [defaultGradientColors] variable.
  const GradientContainer({
    super.key,
    this.gradientColors =
        defaultGradientColors, //use required if you no longer provide default.
  });

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
