import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  String? consent;

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Property Details"), Text("8/8")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 8,
                currentStep: 8,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 20),
              const Text(
                "Property Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
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
                        "Have you shortlisted the property?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 12),
                      const Text(
                        "Enter property details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 26),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Enter building name",
                          hintText: "Enter Your building Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Address line 1",
                          hintText: "Enter address line 1",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Address line 2",
                          hintText: "Enter address line 2",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Pincode",
                          hintText: "Enter pin code",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "City",
                          hintText: "Enter city",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "State",
                          hintText: "Enter State",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => AddBank()));
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
