import 'package:flutter/material.dart';
import 'package:hl_demo/components/coApplicant.dart';

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
                    "Company name",
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
                        labelText: 'Enter your company name'),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "Work Email",
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
                          labelText: 'Enter your work email')),
                  const SizedBox(height: 4),

                  const Text(
                    "Designation",
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
                          labelText: 'Enter your designation')),

                  const SizedBox(height: 4),
                  const Text(
                    "Months in current occupation",
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
                    value: dropdownMonths,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownMonths = newValue!;
                      });
                    },
                    items: <String>['xx Months', '> 3', '> 6', '> 9', '> 12']
                        .map<DropdownMenuItem<String>>((String value) {
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
                    "Total Work Experience",
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
                    value: dropdownYears,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownYears = newValue!;
                      });
                    },
                    items: <String>['xx Years', '1', '2', '3', '4', '> 12']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
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
                          "Communication address is same as above",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                      const SizedBox(width: 10),
                      const Flexible(
                        child: Text(
                          "I accept above detailed are correct and agree to the Terms and Conditions and Privacy policy, and give my consent to ICICI Bank as the lender to collect, store and verify my credit report from credit bureaus and KYC details(from CERSAI) for processing loan application ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                        builder: (context) => const CoApplicant(),
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
