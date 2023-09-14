import 'package:flutter/material.dart';
import 'package:hl_demo/components/coApplicant.dart';
import 'package:hl_demo/components/coApplicantDetails.dart';
import 'package:hl_demo/components/finalOffer.dart';
import 'package:hl_demo/components/processing.dart';
import 'package:hl_demo/components/property.dart';
import 'package:intl/intl.dart' as intl;

enum ProductType { Gold, Silver, Dimond, Blank }

class Approval extends StatefulWidget {
  const Approval({super.key});

  @override
  State<Approval> createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  ProductType? _productType;
  var format = intl.NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: '₹ ',
  );
  String _handleCalculation(amount, months) {
    double rate = 9.5;
    double interest = (amount * (rate * 0.01)) / months;
    double total = ((amount / months) + interest).toInt();

    String ret = format.format(total);
    // String val = "₹$ret";
    return ret;
  }

  int years = 30;
  int yr = 30;
  int amount = 12000000;
  RangeValues values = RangeValues(0, 1);
  int age = 12000000;
  bool? check1 = false;
  bool? check2 = false;
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20),
              Column(
                children: [
                  const Text(
                    "Your Loan offer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Your eligible amount is",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "INR 1,20,00,000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 126, 32, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: cross,
                    children: [
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Loan Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                        ),
                      )),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Color(0xff000000), Color(0xff000000)],
                          ).createShader(bounds),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                format.format(amount),
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: age.toDouble(),
                      activeColor: Color.fromRGBO(243, 126, 32, 1),
                      onChanged: (value) {
                        setState(() {
                          age = value.toInt();
                          amount = age;
                        });
                      },
                      min: 100000,
                      max: 12000000),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: const Text("Min 1L")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Tenure",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                        ),
                      )),

                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Color(0xff000000), Color(0xff000000)],
                          ).createShader(bounds),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "30 Years",
                                // format.format(amount),
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),

                      // Expanded(
                      //     child: ConstrainedBox(
                      //   constraints: const BoxConstraints(
                      //     maxWidth: 300,
                      //   ),
                      //   child: ShaderMask(
                      //     shaderCallback: (bounds) => const LinearGradient(
                      //       colors: [Color(0xff000000), Color(0xff000000)],
                      //     ).createShader(bounds),
                      //     child: Text(
                      //       "30",
                      //       // format.format(years),
                      //       style: const TextStyle(
                      //         fontSize: 16.0,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: yr.toDouble(),
                      activeColor: Color.fromRGBO(243, 126, 32, 1),
                      onChanged: (value) {
                        setState(() {
                          years = value.toInt();
                          yr = years;
                        });
                      },
                      min: 3,
                      max: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: const Text("Min 3 Years")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        "Loan Details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: const Text(
                            "EMI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          // const Text("Years"),
                        )),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                "INR 96,555",
                                // _handleCalculation(amount, years),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: const Text(
                            "ROI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          // const Text("Years"),
                        )),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                "9%",
                                // _handleCalculation(amount, years),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: const Text(
                            "Processing Fees",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          // const Text("Years"),
                        )),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                "INR 2024",
                                // _handleCalculation(amount, years),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // const Text(
                  //   "I wish to increase my loan offer",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       decoration: TextDecoration.underline),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: check1,
                  //       onChanged: (bool? value) {
                  //         setState(() {
                  //           check1 = value;
                  //         });
                  //       },
                  //     ),
                  //     const SizedBox(width: 10),
                  //     const Flexible(
                  //       child: Text(
                  //         "Add financial co-applicant",
                  //         style: TextStyle(
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 20),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: check2,
                  //       onChanged: (bool? value) {
                  //         setState(() {
                  //           check2 = value;
                  //         });
                  //       },
                  //     ),
                  //     const SizedBox(height: 10),
                  //     const Flexible(
                  //       child: Text(
                  //         "Add additional income details",
                  //         style: TextStyle(
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(height: 30),
                  //   ],
                  // ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoApplicant()));
                    },
                    child: const Text(
                      "Click here to get a better offer",
                      style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 18,
                        // fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                                builder: (context) => const ProcessingFee()));
                      },
                      child: const Text("Confirm Offer"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
