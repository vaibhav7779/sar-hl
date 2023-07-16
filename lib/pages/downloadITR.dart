import 'package:flutter/material.dart';
import 'package:hl_demo/pages/verifyITR.dart';

class DownloadITR extends StatefulWidget {
  const DownloadITR({super.key});

  @override
  State<DownloadITR> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<DownloadITR> {
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
                  builder: (context) => const VerifyITR(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                "assets/itrDownload.png",
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
