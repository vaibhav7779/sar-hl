import 'package:flutter/material.dart';
import 'package:hl_demo/components/address.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PersonalDetailsNTB extends StatefulWidget {
  const PersonalDetailsNTB({super.key});

  @override
  State<PersonalDetailsNTB> createState() => _PersonalDetailsNTBState();
}

class _PersonalDetailsNTBState extends State<PersonalDetailsNTB> {
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Basic Information",
                    style: TextStyle(color: Color(0xFF45C00B)),
                  ),
                  Text("")
                ],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 30),
              const Text(
                "Please Confirm Details",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "Amit Kumar",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "PAN",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "AAAAA0000A",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Mother's Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "Rita Ramesh",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      // labelText: "PAN",
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Father's Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "Ramesh Kumar",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      // labelText: "PAN",
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
                    "DOB",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "01/01/1992",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      // labelText: "PAN",
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
                    "Gender",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    initialValue: "Male",
                    decoration: const InputDecoration(
                      // isDense: true,
                      // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                      // labelText: "PAN",
                      border: OutlineInputBorder(),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xFFEBE7E7),
                    ),
                    readOnly: true,
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
                        builder: (context) => const Address(),
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
