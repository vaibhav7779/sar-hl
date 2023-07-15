import 'package:flutter/material.dart';
import 'package:hl_demo/pages/addBank.dart';
import 'package:hl_demo/pages/login.dart';
import 'package:hl_demo/pages/processingFee.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CoApplicant extends StatefulWidget {
  const CoApplicant({super.key});

  @override
  State<CoApplicant> createState() => _CoApplicantState();
}

class _CoApplicantState extends State<CoApplicant> {
  String dropdownIncome = 'Salaried';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BreadCrumb(
              //   items: <BreadCrumbItem>[
              //     BreadCrumbItem(
              //       content: const Text(
              //         "HOME",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "PERSONAL LOANS",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "APPLY",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //   ],
              //   divider: const Icon(Icons.chevron_right),
              // ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Co Applicant"), Text("4/8")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 8,
                currentStep: 6,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 34),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Congratulations!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "You have a loan offer of",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    "₹1,00,00,000",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff45C00B),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Click to view sanction letter",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE97A2A),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: const Text(
                          "Co Applicant",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // SizedBox(height: 20),
                      // TextButton(
                      //     onPressed: () {},
                      //     child: const Text(
                      //       "Resend OTP",
                      //       style: TextStyle(
                      //           color: Color.fromRGBO(233, 122, 42, 1)),
                      //     ))                     const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Tesseract PVT. LTD.",
                        decoration: const InputDecoration(
                          labelText: "Enter company name",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "2,50,000",
                        decoration: const InputDecoration(
                          labelText: "Your monthly income",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "amit.k@placebo.in",
                        decoration: const InputDecoration(
                          labelText: "Your official email id",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "2,50,000",
                        decoration: const InputDecoration(
                          labelText: "Your monthly income",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "amit.k@placebo.in",
                        decoration: const InputDecoration(
                          labelText: "Your official email id",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Income Type',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownIncome,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownIncome = newValue!;
                          });
                        },
                        items: <String>[
                          'Salaried',
                          'Self Employed',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProcessingFee()));
                      },
                      child: const Text("Next"),
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
