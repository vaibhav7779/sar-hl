// import 'package:flutter/material.dart';
// import 'package:hl_demo/components/verifyITR.dart';

// class DownloadITR extends StatefulWidget {
//   const DownloadITR({super.key});

//   @override
//   State<DownloadITR> createState() => _ThirdPartState();
// }

// class _ThirdPartState extends State<DownloadITR> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const VerifyITR(,),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Image.asset(
//                 "assets/itrDownload.png",
//                 fit: BoxFit.cover,
//                 width: 400,
//                 height: 710,
//               ),
//             ),
//           ),
//         ),
//       ]),
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:hl_demo/components/hourGlass.dart';
import 'package:hl_demo/components/verifyITR.dart';

class DownloadITR extends StatefulWidget {
  const DownloadITR({super.key});

  @override
  State<DownloadITR> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<DownloadITR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ICICI Bank",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          leading: Image.asset(
            "assets/icici.png",
            height: 40,
            width: 40,
          ),
        ),
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
