import 'package:flutter/material.dart';
import 'package:hl_demo/components/additionalIncome.dart';
import 'package:hl_demo/components/bank.dart';

enum Consent { yes, no }

enum Family { yes, no }

class CoApplicant extends StatefulWidget {
  const CoApplicant({super.key});

  @override
  State<CoApplicant> createState() => _CoApplicantState();
}

class _CoApplicantState extends State<CoApplicant> {
  // String? consent;
  String? income;
  Consent? _consent = Consent.no;
  Family? _applicant = Family.no;

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
                        child: RadioListTile<Consent>(
                          title: const Text('Yes'),
                          value: Consent.yes,
                          groupValue: _consent,
                          onChanged: null,
                          // (Consent? value) {
                          //   setState(() {
                          //     _consent = value;
                          //   });
                          // },
                        ),
                      )),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: RadioListTile<Consent>(
                          title: const Text('No'),
                          value: Consent.no,
                          groupValue: _consent,
                          onChanged: (Consent? value) {
                            setState(() {
                              _consent = value;
                            });
                          },
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // const Text("Do you wish to add a co-applicant?"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Do you wish to add a co-applicant?",
                        // style: TextStyle(
                        //   color: Color(0xFF1A1A1A),
                        //   fontSize: 18,
                        //   // fontStyle: FontStyle.italic,
                        //   fontWeight: FontWeight.w600,
                        //   decoration: TextDecoration.underline,
                        // ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Tooltip(
                        triggerMode: TooltipTriggerMode.tap,

                        message:
                            'Adding a financial co-\napplicant can increase your\nloan eligibility\n',
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color.fromRGBO(243, 126, 32, 1)),
                        // height: 40,

                        padding: const EdgeInsets.all(4.0),
                        preferBelow: false,
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.white),

                        // message: 'fff',
                        child: Icon(
                          // <-- Icon
                          Icons.info,
                          size: 24.0,
                          color: Color.fromRGBO(243, 126, 32, 1),
                        ),
                        //  Text("jbhdbdhj"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: RadioListTile<Family>(
                          title: const Text('Yes'),
                          value: Family.yes,
                          groupValue: _applicant,
                          onChanged: null,
                          // (Consent? value) {
                          //   setState(() {
                          //     _consent = value;
                          //   });
                          // },
                        ),
                      )),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: RadioListTile<Family>(
                          title: const Text('No'),
                          value: Family.no,
                          groupValue: _applicant,
                          onChanged: (Family? value) {
                            setState(() {
                              _applicant = value;
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
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip Now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(105, 105, 105, 1),
                        decoration: TextDecoration.underline),
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
