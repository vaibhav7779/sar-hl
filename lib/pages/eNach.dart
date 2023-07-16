import 'package:flutter/material.dart';
import 'package:hl_demo/pages/eNach1.dart';

class Enach extends StatefulWidget {
  const Enach({super.key});

  @override
  State<Enach> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<Enach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: GestureDetector(
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ENach1(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                "assets/bank.png",
                fit: BoxFit.cover,
                width: 400,
                height: 710,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
