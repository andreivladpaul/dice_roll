import 'package:first_pr/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   GradientContainer(this.color1, this.color2, {super.key});



  final Color color1;
  final Color color2;

  var image = "assets/dice-2.png";

  void rollDice() {
    final randomNumber = (1 + (6 * (DateTime.now().microsecondsSinceEpoch % 1000) / 1000)).floor();
    image = 'assets/dice-$randomNumber.png';
    // You can use setState if this is a StatefulWidget to update the UI
    // setState(() {});
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),-
//     );
//   }
// }