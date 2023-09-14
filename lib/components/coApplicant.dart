import 'package:flutter/material.dart';
import 'package:hl_demo/components/bank.dart';

class CoApplicant extends StatefulWidget {
  const CoApplicant({super.key});

  @override
  State<CoApplicant> createState() => _CoApplicantState();
}

class _CoApplicantState extends State<CoApplicant> {
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
              const Column(
                children: [
                  Text(
                    "Enter co-applicant details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Are you a co-owner of the property?"),
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
                    height: 30,
                  ),
                  const Text("Do you wish to add a co-applicant?"),
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
                  const SizedBox(
                    height: 18,
                  ),
                ],
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
                                builder: (context) => const AddBank()));
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
