import 'package:flutter/material.dart';
import 'package:hl_demo/components/processing.dart';
import 'package:intl/intl.dart' as intl;
import 'package:hl_demo/components/global.dart' as globals;

class FinalOffer extends StatefulWidget {
  const FinalOffer({super.key});

  @override
  State<FinalOffer> createState() => _FinalOfferState();
}

class _FinalOfferState extends State<FinalOffer> {
  int newAmount = globals.newAmount;
  int years = globals.years;

  var format = intl.NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: '₹ ',
  );
  var yr = intl.NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: ' ',
  );

  String _handleCalculation(newAmount, months) {
    double rate = 9.5;
    double interest = (newAmount * (rate * 0.01)) / months;
    double total = ((newAmount / months) + interest).toInt();

    String ret = format.format(total);
    // String val = "₹$ret";
    return ret;
  }

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
                        "INR 1,50,00,000",
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
                          child: const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Loan Amount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            format.format(newAmount),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: newAmount.toDouble(),
                      activeColor: Color.fromRGBO(243, 126, 32, 1),
                      onChanged: (value) {
                        setState(() {
                          newAmount = value.toInt();
                        });
                      },
                      min: 100000,
                      max: 15000000),
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
                          child: const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Tenure",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            yr.format(years) + " Years",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Slider(
                      label: "Select Age",
                      value: years.toDouble(),
                      activeColor: Color.fromRGBO(243, 126, 32, 1),
                      onChanged: (value) {
                        setState(() {
                          years = value.toInt();
                          // yr = years;
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
                                _handleCalculation(newAmount, (years * 12)),
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
                        )),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                "INR 2024",
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
                  const SizedBox(
                    height: 10,
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
