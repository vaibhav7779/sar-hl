import 'package:flutter/material.dart';
import 'package:hl_demo/components/congratulations.dart';
import 'package:intl/intl.dart' as intl;

enum ProductType { Gold, Silver, Dimond, Blank }

class FinalOffer extends StatefulWidget {
  const FinalOffer({super.key});

  @override
  State<FinalOffer> createState() => _FinalOfferState();
}

class _FinalOfferState extends State<FinalOffer> {
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
  int yr = 3;
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
                    children: [
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: const Text(
                          "Loan Amount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
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
                          child: Text(
                            format.format(amount),
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: age.toDouble(),
                      activeColor: Color(0xffF7B61A),
                      onChanged: (value) {
                        setState(() {
                          age = value.toInt();
                          amount = age;
                        });
                      },
                      min: 100000,
                      max: 12000000),
                  const Text("Min 1L"),
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
                        child: const Text(
                          "Tenure",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                        // const Text("Years"),
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
                          child: Text(
                            format.format(years),
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: yr.toDouble(),
                      activeColor: Color(0xffF7B61A),
                      onChanged: (value) {
                        setState(() {
                          yr = value.toInt();
                          years = yr;
                        });
                      },
                      min: 3,
                      max: 30),
                  const Text("Min 3 Years"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Loan Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
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
                        child: Text(
                          _handleCalculation(amount, years),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
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
                        child: Text(
                          "9%",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
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
                        child: Text(
                          "INR 2024",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: check1,
                        onChanged: (bool? value) {
                          setState(() {
                            check1 = value;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      const Flexible(
                        child: Text(
                          "Add financial co-applicant",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: check2,
                        onChanged: (bool? value) {
                          setState(() {
                            check2 = value;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      const Flexible(
                        child: Text(
                          "Add additional income details",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ],
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
                                builder: (context) => const Congratulations()));
                      },
                      child: const Text("Confirm Loan Details"),
                    ),
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: ElevatedButton(
              //       onPressed: (_productType == null)
              //           ? null
              //           : () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => const CoApplicant(),
              //                 ),
              //               );
              //             },
              //       child: const Text("Next"),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
