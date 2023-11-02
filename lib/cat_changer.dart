import 'package:flutter/material.dart';

class CatChanger extends StatefulWidget {
  const CatChanger({super.key});

  @override
State<CatChanger> createState () {
  return _CatChangerState();
  }
}

class _CatChangerState extends State <CatChanger> {
var activeCatImage = 'assets/2170.jpg';

  void pushCat() {
    setState(() {
      activeCatImage = 'assets/3400_9_09.jpg';
    });
  }

 @override
  Widget build(context) {
return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeCatImage,
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: pushCat,
              style: TextButton.styleFrom(
               // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Push'),
            )
          ],
        );
  }
}