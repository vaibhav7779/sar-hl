import 'package:flutter/material.dart';
import 'package:hl_demo/components/loader.dart';

class AdditionalIncome extends StatefulWidget {
  const AdditionalIncome({super.key});

  @override
  State<AdditionalIncome> createState() => _AdditionalIncomeState();
}

class _AdditionalIncomeState extends State<AdditionalIncome> {
  String? consent;
  String? income;
  String dropdownIndustry = 'Rental';

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
                    "Enter Additional Income details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFEBE7E7),
                      labelText: "Select Income Type",
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
                      'Rental',
                      'Garage',
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
                    height: 30,
                  ),

                  TextFormField(
                    autofocus: false,
                    initialValue: "2,00,000",
                    decoration: const InputDecoration(
                      labelText: "Enter Annual Income",
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: false,
                  ),

//

                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          // check1 == false || check2 == false
                          //     ? null
                          //     :
                          () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const CoApplicant(),
                        //   ),
                        // );
                      },
                      child: const Text("+ Click to add more"),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip Now",
                      style: TextStyle(
                          color: Color.fromRGBO(105, 105, 105, 1),
                          decoration: TextDecoration.underline),
                    ),
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
                                builder: (context) => Loading(
                                      nextPage: 'succss',
                                    )));
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
