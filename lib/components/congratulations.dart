import 'package:flutter/material.dart';
import 'package:hl_demo/components/homePage.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  String Congratulations = 'Wife';
  String? consent;
  String? income;

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
        // leading: IconButton(
        //   // icon: const Icon(Icons.arrow_back, color: Colors.white),
        //   icon: Image.asset(
        //     "assets/icici.png",
        //     fit: BoxFit.cover,
        //     width: 40,
        //     height: 40,
        //   ),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 6,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  "assets/success.gif",
                  fit: BoxFit.cover,
                  width: 180,
                  height: 180,
                ),
                const SizedBox(height: 20),
                const Column(
                  children: [
                    Text(
                      "Congratulations!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange),
                    ),
                  ],
                ),
                const Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //

                        Text(
                          "Your Home Loan Application has been Sanctioned and valid till December 14,2023",
                          // 'You are just one click away from your "Dream Home". Pay processing fee to complete your loan sanction process.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        // Center(child: Text("valid till December 14,2023")),

                        SizedBox(
                          height: 16,
                        ),

                        Text(
                          "Your Application ID is:",
                          // "Your Home Loan Application has been Sanctioned and valid till December 14,2023",
                          // 'You are just one click away from your "Dream Home". Pay processing fee to complete your loan sanction process.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        Text(
                          "HL45662327",
                          // "Your Home Loan Application has been Sanctioned and valid till December 14,2023",
                          // 'You are just one click away from your "Dream Home". Pay processing fee to complete your loan sanction process.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: ConstrainedBox(
                        //         constraints: const BoxConstraints(
                        //           maxWidth: 300,
                        //         ),
                        //         child: const Text(
                        //           "City",
                        //           style: TextStyle(
                        //               fontSize: 14,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //         child: ConstrainedBox(
                        //       constraints: const BoxConstraints(
                        //         maxWidth: 300,
                        //       ),
                        //       child: const Text(
                        //         "State",
                        //         style: TextStyle(
                        //             fontSize: 14, fontWeight: FontWeight.bold),
                        //       ),
                        //     )),
                        //   ],
                        // ),

                        // Text(
                        //   "Download Sanction Letter",
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w900,
                        //       color: Colors.orange),
                        // ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Row(
                //   children: [
                //     Expanded(
                //       child: ConstrainedBox(
                //         constraints: const BoxConstraints(
                //           maxWidth: 300,
                //         ),

                //         child: const Icon(Icons.file_download_outlined),
                //         // IconButton( icon:Icon(Icons.arrow_back)),
                //         // Text(
                //         //   "City",
                //         //   style: TextStyle(
                //         //       fontSize: 14, fontWeight: FontWeight.bold),
                //         // ),
                //       ),
                //     ),
                //     Expanded(
                //         child: ConstrainedBox(
                //       constraints: const BoxConstraints(
                //         maxWidth: 300,
                //       ),
                //       child: const Text(
                //         "Download Sanction Letter",
                //         style: TextStyle(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w900,
                //             color: Colors.orange),
                //       ),
                //       // Text(
                //       //   "State",
                //       //   style: TextStyle(
                //       //       fontSize: 14, fontWeight: FontWeight.bold),
                //       // ),
                //     )),
                //   ],
                // ),

                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      // <-- Icon

                      Icons.file_download_outlined,
                      size: 30.0,
                      color: Color.fromRGBO(243, 126, 32, 1),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Download Sanction Letter",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text("Go to HomePage"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
