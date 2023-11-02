import 'package:flutter/material.dart';
import 'package:first_flutter_app/cat_changer.dart';
import 'package:first_flutter_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   GradientContainer(this.color1, this.color2, {super.key}) {
    // Initialization work
    // add come comments
  }

   GradientContainer.purple({super.key})
      : color1 = Color.fromARGB(255, 197, 3, 149),
        color2 = Color.fromARGB(179, 73, 8, 185);

  final Color color1;
  final Color color2;

  

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
        child: StartScreen(),
      ),
    );
  }
}
