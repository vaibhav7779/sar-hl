import 'package:flutter/material.dart';
import 'package:hl_demo/components/bank.dart';
import 'package:hl_demo/components/coApplicant.dart';
import 'package:hl_demo/components/verifyITR.dart';

enum Consent { yes, no }

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  String? consent;
  String? income;
  Consent? _consent = Consent.yes;
  String dropdownCity = 'City';
  String dropdownBuilder = 'Builder';
  String dropdownProject = 'Project';
  String dropdownWing = 'Wing';

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
                    "Enter Property Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Have you identified the property?"),
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
                          onChanged: (Consent? value) {
                            setState(() {
                              _consent = value;
                            });
                          },
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
                          onChanged: null,
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Enter Details"),
                  const SizedBox(
                    height: 18,
                  ),
                  // const TextField(
                  //   decoration: InputDecoration(
                  //       enabledBorder: UnderlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: Colors.grey, width: 1.0)),
                  //       focusedBorder: UnderlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: Colors.orange, width: 1.0)),
                  //       labelText: 'City'),
                  // ),

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
                    value: dropdownCity,
                    icon: Icon(Icons.search),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownCity = newValue!;
                      });
                    },
                    items: <String>['City', 'Delhi', 'Mumbai', 'Bangalore']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,

// children: <Widget>[
//                           Icon(Icons.settings),
//                           SizedBox(width: 10),
//                           Text(
//                             "Setting",
//                           ),
//                         ],
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // builder
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
                    value: dropdownBuilder,
                    icon: Icon(Icons.search),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownBuilder = newValue!;
                      });
                    },
                    items: <String>['Builder', 'Godrej', 'Unitech']
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

                  const SizedBox(
                    height: 8,
                  ),
                  // Project
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
                    value: dropdownProject,
                    icon: Icon(Icons.search),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownProject = newValue!;
                      });
                    },
                    items: <String>[
                      'Project',
                      'Project A',
                      'Project B',
                      'Project C'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // wing
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
                    value: dropdownWing,
                    icon: Icon(Icons.search),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownWing = newValue!;
                      });
                    },
                    items: <String>['Wing', 'Wing A', 'Wing B', 'Wing C']
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
                  const SizedBox(
                    height: 8,
                  ),
                  // floor
                  const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 1.0)),
                        labelText: 'Floor'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 1.0)),
                        labelText: 'Flat Number'),
                  ),
                ],
              ),
              //

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
                                builder: (context) => const VerifyITR()));
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
