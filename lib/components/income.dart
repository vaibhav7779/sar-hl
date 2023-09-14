import 'package:flutter/material.dart';
import 'package:hl_demo/components/enach.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class IncomeVerification extends StatefulWidget {
  const IncomeVerification({super.key});

  @override
  State<IncomeVerification> createState() => _IncomeVerificationState();
}

class _IncomeVerificationState extends State<IncomeVerification> {
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;

  String? consent;
  String dropdownMonths = 'xx Months';
  String dropdownYears = 'xx Years';

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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Income Verification",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Select one of the below options to verify your income",
                style: TextStyle(
                  color: Color.fromRGBO(243, 126, 32, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // account aggre
              const SizedBox(height: 30),
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed:
              //         // check1 == false || check2 == false
              //         //     ? null
              //         //     :
              //         () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (context) => const CoApplicant(),
              //       //   ),
              //       // );
              //     },
              //     child: const Text("Account aggregator(Recommended)"),
              //   ),
              // ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 380,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Verification",
                                      style: TextStyle(
                                          color: Color(0xFF006400),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("")
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const StepProgressIndicator(
                                  totalSteps: 4,
                                  currentStep: 3,
                                  selectedColor: Color(0xFF45C00B),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'LINK YOUR ACCOUNTS',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Select the account with your primary source of income',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    ListTile(
                                      leading: Image.asset('assets/bob.png'),
                                      title: const Text(
                                        'Bank of Baroda',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      subtitle: const Text(
                                          'Savings ********4937 ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  186, 186, 186, 1))),
                                      trailing: Checkbox(
                                        value: check1,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            check1 = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      leading: Image.asset('assets/icici.png'),
                                      title: const Text(
                                        'ICICI',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      subtitle: const Text(
                                          'Savings ********4937 ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  186, 186, 186, 1))),
                                      trailing: Checkbox(
                                        value: check2,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            check2 = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      leading: Image.asset('assets/HDFC.png'),
                                      title: const Text(
                                        'HDFC',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      subtitle: const Text(
                                          'Savings ********4937 ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  186, 186, 186, 1))),
                                      trailing: Checkbox(
                                        value: check3,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            check3 = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      //LoanDisbursed
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ENach(),
                                          ));
                                    },
                                    child: const Text("Link accounts"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );

                    // showModalBottomSheet<void>(
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.vertical(
                    //       top: Radius.circular(20),
                    //     ),
                    //   ),
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return SizedBox(
                    //       height: 227,
                    //       child: Padding(
                    //         padding: const EdgeInsets.symmetric(
                    //             vertical: 1, horizontal: 10),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //             const Text(
                    //               'DOCUMENT SIGNING',
                    //               style: TextStyle(
                    //                 fontSize: 12,
                    //                 fontWeight: FontWeight.w700,
                    //               ),
                    //             ),
                    //             Text(
                    //               'Provide us with the following in order to setup your folio',
                    //               style: TextStyle(
                    //                 fontSize: 14,
                    //               ),
                    //             ),
                    //             SizedBox(
                    //               width: double.infinity,
                    //               child: ElevatedButton(
                    //                 onPressed: false
                    //                     ? null
                    //                     : () {
                    //                         //LoanDisbursed

                    //                         Navigator.push(
                    //                             context,
                    //                             MaterialPageRoute(
                    //                               builder: (context) =>
                    //                                   const CoApplicant(),
                    //                             ));
                    //                       },
                    //                 child: const Text("Link accounts"),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // );
//
                  },
                  child: const Text("Account aggregator(Recommended)"),
                ),

                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const CoApplicant(),
                //       ),
                //     );
                //   },
                //   child: const Text("Next"),
                // ),
              ),

              // internet
              const SizedBox(height: 26),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      // check1 == false || check2 == false
                      //     ? null
                      //     :
                      () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const CoApplicant(),
                    //     ),
                    //   );
                  },
                  child: const Text("Internet Banking"),
                ),
              ),
              // upload
              const SizedBox(height: 26),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      // check1 == false || check2 == false
                      //     ? null
                      //     :
                      () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const CoApplicant(),
                    //   ),
                    // );
                  },
                  child: const Text(
                      "Upload latest 6 months bank e-statements PDF"),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
