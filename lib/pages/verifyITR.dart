import 'package:flutter/material.dart';
import 'package:hl_demo/pages/ITRSite.dart';
import 'package:hl_demo/pages/addBank.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class VerifyITR extends StatefulWidget {
  const VerifyITR({super.key});

  @override
  State<VerifyITR> createState() => _VerifyITRState();
}

class _VerifyITRState extends State<VerifyITR> {
  String? consent;
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  String? employment = 'Self Employed';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Income Verification"), Text("4/8")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 8,
                currentStep: 4,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Please provide your income details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Upload ITR for last 2 years",
                        style: TextStyle(
                          color: Color(0xFFE97A2A),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ITRSite()));
                        },
                        child: const Text(
                          "Click here to download ITR",
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const ITRSite()));
                      //   },
                      //   child: const Text(
                      //     "Click here to download ITR",
                      //     style: TextStyle(
                      //       color: Color(0xFF1A1A1A),
                      //       fontSize: 18,
                      //       fontStyle: FontStyle.italic,
                      //       fontWeight: FontWeight.w600,
                      //       decoration: TextDecoration.underline,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      const Text(
                        "Latest 2 ITR from 3/4 PDF",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      // const SizedBox(height: 26),
                      // DropdownButtonFormField(
                      //   decoration: const InputDecoration(
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Colors.black, width: 1),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Colors.black, width: 1),
                      //     ),
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     labelText: 'Occupation Type',
                      //     labelStyle: TextStyle(color: Colors.grey),
                      //   ),
                      //   iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                      //   dropdownColor: Colors.white,
                      //   value: employment,
                      //   onChanged: (String? newValue) {
                      //     setState(() {
                      //       employment = newValue!;
                      //     });
                      //   },
                      //   items: <String>['Self Employed', 'Salaried']
                      //       .map<DropdownMenuItem<String>>((String value) {
                      //     return DropdownMenuItem<String>(
                      //       value: value,
                      //       child: Text(
                      //         value,
                      //       ),
                      //     );
                      //   }).toList(),
                      // ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Theme(
                              data: theme.copyWith(
                                  checkboxTheme: newCheckBoxTheme),
                              child: CheckboxListTile(
                                side: MaterialStateBorderSide.resolveWith(
                                  (states) => const BorderSide(
                                      width: 2.0, color: Colors.green),
                                ),
                                activeColor: Colors.green,
                                value: checkboxValue1,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkboxValue1 = value!;
                                  });
                                },
                                title: Transform.translate(
                                  offset: const Offset(-14, 0),
                                  child: TextFormField(
                                    autofocus: false,
                                    decoration: const InputDecoration(
                                      labelText: "PDF1",
                                      hintText: "PDF1",
                                      border: OutlineInputBorder(),
                                      isDense: true,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          8.0, 14.0, 8.0, 14.0),
                                      filled: true,
                                      fillColor: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: Icon(Icons.attach_file_outlined),
                          ),
                          // Icon(Icons.attach_file_outlined),
                          Expanded(
                            child: Transform.translate(
                              offset: const Offset(-24, 0),
                              child: CheckboxListTile(
                                value: checkboxValue1,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkboxValue1 = value!;
                                  });
                                },
                                title: const Text("I verified the PDF"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Theme(
                              data: theme.copyWith(
                                  checkboxTheme: newCheckBoxTheme),
                              child: CheckboxListTile(
                                side: MaterialStateBorderSide.resolveWith(
                                  (states) => const BorderSide(
                                      width: 2.0, color: Colors.green),
                                ),
                                activeColor: Colors.green,
                                value: checkboxValue2,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkboxValue2 = value!;
                                  });
                                },
                                title: Transform.translate(
                                  offset: const Offset(-14, 0),
                                  child: TextFormField(
                                    autofocus: false,
                                    decoration: const InputDecoration(
                                      labelText: "PDF2",
                                      hintText: "PDF2",
                                      border: OutlineInputBorder(),
                                      isDense: true,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          8.0, 14.0, 8.0, 14.0),
                                      filled: true,
                                      fillColor: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: Icon(Icons.attach_file_outlined),
                          ),
                          //  ),
                          Expanded(
                            child: Transform.translate(
                              offset: const Offset(-24, 0),
                              child: CheckboxListTile(
                                value: checkboxValue2,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkboxValue2 = value!;
                                  });
                                },
                                title: const Text("I verified the PDF"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
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
