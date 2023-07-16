import 'package:flutter/material.dart';
import 'package:hl_demo/pages/downloadITR.dart';

class ITRSite extends StatefulWidget {
  const ITRSite({super.key});

  @override
  State<ITRSite> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ITRSite> {
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
                  builder: (context) => const DownloadITR(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                "assets/itrSite.png",
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
