import 'package:flutter/material.dart';
import 'package:hl_demo/pages/verifyITR.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Employment extends StatefulWidget {
  const Employment({super.key});

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {
  String dropdownOccupation = 'Self Employed';
  String dropdownIndustry = 'Automobile';
  String dropdownTotalExp = '2 - 5 Years';
  String dropdownCurrExp = '> 1 Year';
  bool? check1 = false;
  bool? check2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Employment Details"), Text("3/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 3,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 20),
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
                      const Text(
                        "Enter employment details",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
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
                          labelText: 'Occupation Type',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownOccupation,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownOccupation = newValue!;
                          });
                        },
                        items: <String>[
                          'Self Employed',
                          'Salaried',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
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
                          labelText: 'Industry Type',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownIndustry,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownIndustry = newValue!;
                          });
                        },
                        items: <String>['Automobile', 'Agriculture', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Quadra",
                        decoration: const InputDecoration(
                          labelText: "Name of business",
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
                          labelText: 'Total business vintage',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownTotalExp,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownTotalExp = newValue!;
                          });
                        },
                        items: <String>['2 - 5 Years', '1 - 2 Years', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
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
                          labelText: 'Years in current occupation',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownCurrExp,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownCurrExp = newValue!;
                          });
                        },
                        items: <String>['> 1 Year', '> 2 Years', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Employment(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFB81C22)),
                            foregroundColor: const Color(0xFFB81C22),
                            backgroundColor: const Color(0xFFFFFFFF)),
                        child: const Text("+ Click to add sources of income"),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "*Click to add additional sources of income like rental income, agricultural income etc.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Fetched from PAN",
                        decoration: const InputDecoration(
                          labelText: "GSTIN number",
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        // initialValue: "Enter total current EMI(s) amount",
                        decoration: const InputDecoration(
                          labelText: "Total current EMI(s)",
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyITR()));
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
