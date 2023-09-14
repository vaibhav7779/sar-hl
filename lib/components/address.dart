import 'package:flutter/material.dart';
import 'package:hl_demo/components/employment.dart';

bool isChecked = false;

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool? check1 = false;
  bool? check2 = false;
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
                "Address confirmation details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),

              // const Text(
              //   "Address",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              // const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "We have fetched below details from UIDAI",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // const SizedBox(height: 20),
                  const Text(
                    "Address line 1",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "House no 123, Sector 16",
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Address line 2",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "Vasant Vihar",
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: const Text(
                            "City",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: const Text(
                          "State",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )),
                    ],
                  ),

                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: TextFormField(
                            autofocus: false,
                            initialValue: "Delhi",
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true, //<-- SEE HERE
                              fillColor: Color(0xFFEBE7E7),
                            ),
                            readOnly: true,
                          ),
                        ),
                      ),
                      Expanded(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: TextFormField(
                          autofocus: false,
                          initialValue: "Delhi",
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Color(0xFFEBE7E7),
                          ),
                          readOnly: true,
                        ),
                      )),
                    ],
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
                      const SizedBox(width: 10),
                      const Flexible(
                        child: Text(
                          "Current address is same as above",
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
                  onPressed: _value == true || _value1 == true
                      ?
                      // check1 == false || check2 == false
                      //     ? null
                      //     :
                      // onPressed:
                      // check1 == false || check2 == false
                      //     ? null
                      //     :
                      () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Employment(),
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
