import 'package:flutter/material.dart';
import 'package:hl_demo/components/generateOffer.dart';

class AdditionalIncome extends StatefulWidget {
  const AdditionalIncome({super.key});

  @override
  State<AdditionalIncome> createState() => _AdditionalIncomeState();
}

class _AdditionalIncomeState extends State<AdditionalIncome> {
  String AdditionalIncome = 'Wife';
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
                    "Additional Income Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: false,

                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true, //<-- SEE HERE
                        labelText: "Select Income Type",
                        fillColor: Color(0xFFFFFFFF),
                      ),
                      // readOnly: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Enter annual Income"),
                  TextFormField(
                    autofocus: false,
                    initialValue: "INR 2,00,000",
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFF5F5F5),
                    ),
                    readOnly: true,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //

                    const SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          // builder: (context) => const AdditionalIncome(),
                          // ));
                        },
                        style: ElevatedButton.styleFrom(
                            // side: const BorderSide(color: Color(0xFFB81C22)),
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(243, 126, 32, 1)),
                        child: const Text("+ Click to add sources of income"),
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
                                builder: (context) => const GenerateOffer()));
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
