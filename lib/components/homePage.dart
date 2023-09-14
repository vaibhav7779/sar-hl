import 'package:flutter/material.dart';
import 'package:hl_demo/components/personalDetails.dart';
import 'package:hl_demo/components/select.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const PersonalDetails(),
              //   ),
              // );
            },
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  "assets/home.png",
                  fit: BoxFit.cover,
                  width: 300,
                  height: 600,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed:
                  // check1 == false || check2 == false
                  //     ? null
                  //     :
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonalDetails(),
                  ),
                );
              },
              child: const Text("Apply Now"),
            ),
          ),
        ),
      ]),
    ));
  }
}
