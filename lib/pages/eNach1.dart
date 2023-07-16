import 'package:flutter/material.dart';
import 'package:hl_demo/pages/loading.dart';

class ENach1 extends StatefulWidget {
  const ENach1({super.key});

  @override
  State<ENach1> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ENach1> {
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
                  builder: (context) => const Loading(nextPage: 'approval'),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/bankk.png",
                fit: BoxFit.cover,
                width: 400,
                height: 740,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
