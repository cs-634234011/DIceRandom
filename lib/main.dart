import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const DiceRandomApp());
}

class DiceRandomApp extends StatelessWidget {
  const DiceRandomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Slot"),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: DiceRandom(),
      ),
    );
  }
}

class DiceRandom extends StatefulWidget {
  const DiceRandom({Key? key}) : super(key: key);

  @override
  State<DiceRandom> createState() => _DiceRandomState();
}

class _DiceRandomState extends State<DiceRandom> {
  var slotnumber1 = Random().nextInt(6);

  void setSlotNumber() {
    setState(() {
      slotnumber1 = Random().nextInt(6);
    });
    debugPrint("$slotnumber1");
  }

  Expanded createExpanded(int slotnumber) {
    return Expanded(
      child: TextButton(
        onPressed: setSlotNumber,
        child: Image.asset('images/$slotnumber.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            children: [
              createExpanded(slotnumber1),
            ],
          )),
    );
  }
}
