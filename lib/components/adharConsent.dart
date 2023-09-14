import 'package:flutter/material.dart';
import 'package:hl_demo/components/personalDetailsNTB.dart';

bool isChecked = false;

class AdharConsent extends StatefulWidget {
  const AdharConsent({super.key});

  @override
  State<AdharConsent> createState() => _AdharConsentState();
}

class _AdharConsentState extends State<AdharConsent> {
  
  bool _value = false;
  bool _value1 = false;

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
                "Aadhar Details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Enter Aadhar or VID",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xFFFFFFFF),
                        labelText: '1234 5678 9232',
                      ),
                      // readOnly: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                      // Checkbox(
                      //   value: check1,
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       check1 = value;
                      //     });
                      //   },
                      // ),
                      const SizedBox(width: 10),
                      const Flexible(
                        child: Text(
                          "I agree to share my Aadhaar with the bank and bank will share the details from UIDAI for the OTP",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: _value1,
                        onChanged: (bool? _value) {
                          setState(() {
                            _value1 = _value!;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      const Flexible(
                        child: Text(
                          "I agree to the Terms and Conditions and Privacy Policy, and give my consent to ICICI Bank as the lender to collect, store and verify my credit report from credit bureaus and KYC details (from CERSAI) for processing loan application",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
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
                  onPressed: _value == true || _value1 == true
                      ?
                      // check1 == false || check2 == false
                      //     ? null
                      //     :
                      () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PersonalDetailsNTB(),
                            ),
                          );
                        }
                      : null,
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
