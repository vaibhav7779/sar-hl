import 'package:flutter/material.dart';
import 'package:hl_demo/components/coApplicant.dart';
import 'package:hl_demo/components/verifyITR.dart';

bool isChecked = false;

class Employment extends StatefulWidget {
  const Employment({super.key});

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {
  bool? check1 = false;
  bool? check2 = false;
  String? consent;
  String dropdownOccupation = 'Self Employed';
  String dropdownIndustry = 'Automobile';
  String dropdownVintage = '2-5 Years';
  String dropdownCurrent = '>1 Year';

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
                "< Enter Employment Details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Occupation",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: RadioListTile(
                          title: const Text("Salaried"),
                          value: "Salaried",
                          groupValue: consent,
                          onChanged: null,
                          //  (value) {
                          //   setState(() {
                          //     consent = value.toString();
                          //   });
                          // },
                        ),
                      )),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: RadioListTile(
                          title: const Text("Self-employed"),
                          value: "Self-employed",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      )),
                    ],
                  ),
                  const Divider(),
                  const Text(
                    "Industry Type",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    iconEnabledColor: Colors.grey,
                    dropdownColor: Colors.white,
                    value: dropdownIndustry,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownIndustry = newValue!;
                      });
                    },
                    items: <String>[
                      'Automobile',
                      'Garage',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Name of Business",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 1.0)),
                        labelText: 'Quadra'),
                  ),
                  const SizedBox(height: 4),

                  const Text(
                    "Total Business Vintage",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    iconEnabledColor: Colors.grey,
                    dropdownColor: Colors.white,
                    value: dropdownVintage,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownVintage = newValue!;
                      });
                    },
                    items: <String>[
                      '2-5 Years',
                      '1-2 Years',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 4),
                  // 4
                  const Text(
                    "Years in current occupation",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    iconEnabledColor: Colors.grey,
                    dropdownColor: Colors.white,
                    value: dropdownCurrent,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownCurrent = newValue!;
                      });
                    },
                    items: <String>[
                      '>1 Year',
                      '>2 Year',
                      '>3 Year',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) => const CoApplicantDetails(),
                        // ));
                      },
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: Color.fromRGBO(243, 126, 32, 1)),
                          backgroundColor: Colors.white,
                          foregroundColor: Color.fromRGBO(243, 126, 32, 1)),
                      child: const Text("+ Click to add sources of income"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    "GSTIN number",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1.0)),
                          labelText: 'Fetched from PAN')),
                  const SizedBox(height: 4),
                  const Text(
                    "Total Current EMI(s)",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 126, 32, 1)),
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 1.0),
                          ),
                          labelText: 'Enter total current EMI(s) amount')),
                  const SizedBox(height: 4),
                  // 1
                  // const Text(
                  //   "Occupation Type",
                  //   style: TextStyle(
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.bold,
                  //       color: Color.fromRGBO(243, 126, 32, 1)),
                  // ),
                  // DropdownButtonFormField(
                  //   decoration: const InputDecoration(
                  //     enabledBorder: UnderlineInputBorder(
                  //         borderSide:
                  //             BorderSide(color: Colors.grey, width: 1.0)),
                  //     focusedBorder: UnderlineInputBorder(
                  //         borderSide:
                  //             BorderSide(color: Colors.grey, width: 1.0)),
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     labelStyle: TextStyle(color: Colors.grey),
                  //   ),
                  //   iconEnabledColor: Colors.grey,
                  //   dropdownColor: Colors.white,
                  //   value: dropdownOccupation,
                  //   onChanged: (String? newValue) {
                  //     setState(() {
                  //       dropdownOccupation = newValue!;
                  //     });
                  //   },
                  //   items: <String>['Self Employed', 'Salaried']
                  //       .map<DropdownMenuItem<String>>((String value) {
                  //     return DropdownMenuItem<String>(
                  //       value: value,
                  //       child: Text(
                  //         value,
                  //         style: TextStyle(color: Colors.grey),
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                  // const SizedBox(height: 4),
                  // 2

                  // 3

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
                  //         "Current address is same as above",
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
                  //     const SizedBox(width: 10),
                  //     const Flexible(
                  //       child: Text(
                  //         "I accept above detailed are correct and agree to the Terms and Conditions and Privacy policy, and give my consent to ICICI Bank as the lender to collect, store and verify my credit report from credit bureaus and KYC details(from CERSAI) for processing loan application ",
                  //         style: TextStyle(
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
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
                        builder: (context) => const VerifyITR(),
                      ),
                    );
                  },
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
