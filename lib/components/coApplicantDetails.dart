import 'package:flutter/material.dart';
import 'package:hl_demo/components/additionalIncome.dart';

class CoApplicantDetails extends StatefulWidget {
  const CoApplicantDetails({super.key});

  @override
  State<CoApplicantDetails> createState() => _CoApplicantDetailsState();
}

class _CoApplicantDetailsState extends State<CoApplicantDetails> {
  String CoApplicantDetails = 'Wife';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6,
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  const Text(
                    " < Co-Applicant Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //
                    const Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1.0)),
                          labelText: 'First name | Middle name | Last name'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Phone",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1.0)),
                          labelText: ''),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1.0)),
                          labelText: ''),
                    ),

                    const SizedBox(height: 24),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 1.0)),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Relationship with Co-Applicant',
                        hintText: "Wife",
                        labelStyle: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                      dropdownColor: Colors.white,
                      value: CoApplicantDetails,
                      onChanged: (String? newValue) {
                        setState(() {
                          CoApplicantDetails = newValue!;
                        });
                      },
                      items: <String>[
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
                      "Is co-applicant a financial co-applicant",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
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
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Will co-applicant be co-owner of the property?",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
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
                    const Divider(),

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
                            side: const BorderSide(color: Color(0xFFB81C22)),
                            foregroundColor: const Color(0xFFB81C22),
                            backgroundColor: const Color(0xFFFFFFFF)),
                        child: const Text("+ Click to add more co-applicants"),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
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
                                builder: (context) =>
                                    const AdditionalIncome()));
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
