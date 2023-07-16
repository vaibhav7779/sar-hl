import 'package:flutter/material.dart';
import 'package:hl_demo/pages/processingFee.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CoApplicant extends StatefulWidget {
  const CoApplicant({super.key});

  @override
  State<CoApplicant> createState() => _CoApplicantState();
}

class _CoApplicantState extends State<CoApplicant> {
  String coApplicant = 'Select';
  String? consent;
  String? income;

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
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Co-Applicant Details"), Text("6/8")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 8,
                currentStep: 6,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Congratulations!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                  const Text(
                    "You have a loan offer of",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    "₹1,00,00,000",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff45C00B),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Click to view sanction letter",
                      style: TextStyle(
                          color: Color(0xFFE97A2A),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
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
                        "Co-Applicant Details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "First name",
                          hintText: "Enter your first Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Middle name",
                          hintText: "Enter your middle Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Last name",
                          hintText: "Enter your last Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Mobile no.",
                          hintText: "Enter your phone number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Email id",
                          hintText: "Enter your email id",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
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
                          labelText: 'Relationship with Applicant',
                          hintText: "Select",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: coApplicant,
                        onChanged: (String? newValue) {
                          setState(() {
                            coApplicant = newValue!;
                          });
                        },
                        items: <String>[
                          'Select',
                          'Wife',
                          'Husband',
                          'Father',
                          'Mother',
                          'Son',
                          'Daughter'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                          "Is co-applicant the co-owner of the property?"),
                      Row(
                        children: [
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("Yes"),
                              value: "Yes",
                              groupValue: consent,
                              onChanged: (value) {
                                setState(() {
                                  consent = value.toString();
                                });
                              },
                            ),
                          )),
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("No"),
                              value: "No",
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Add co-applicant's income to increase the eligibility?"),
                      Row(
                        children: [
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("Yes"),
                              value: "Yes",
                              groupValue: income,
                              onChanged: (value) {
                                setState(() {
                                  income = value.toString();
                                });
                              },
                            ),
                          )),
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("No"),
                              value: "No",
                              groupValue: income,
                              onChanged: (value) {
                                setState(() {
                                  income = value.toString();
                                });
                              },
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CoApplicant(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFFB81C22)),
                              foregroundColor: const Color(0xFFB81C22),
                              backgroundColor: const Color(0xFFFFFFFF)),
                          child: const Text("+ Add another co-applicant"),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProcessingFee()));
                        },
                        child: const Text(
                          "Skip adding Co-applicant",
                          style: TextStyle(
                              color: Color(0xFFE97A2A),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
