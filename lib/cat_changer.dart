import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_flutter_app/styled_text.dart';

final randomizer = Random();

class CatChanger extends StatefulWidget {
  const CatChanger({super.key});

  @override
  State<CatChanger> createState() {
    return _CatChangerState();
  }
}

class _CatChangerState extends State<CatChanger> {
  var currentCat = 1;

  void pushCat() {
    setState(() {
      currentCat = randomizer.nextInt(3) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/cat-$currentCat.jpg',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: pushCat,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Push'),
        ),
        const StyledText('Start my Quiz!'),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: () {}
        , style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        icon: const Icon(Icons.abc_rounded),
        label: const Text('nice icon button'),
        ),
        const SizedBox(
          height: 20,
        ),
        FilledButton(
          onPressed: pushCat, 
          child: const Text('Start Game')
          ),
      ],
    );
  }
}
