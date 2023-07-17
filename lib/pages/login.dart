import 'package:flutter/material.dart';
import 'package:hl_demo/pages/otp.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String cardSel = 'agent';

class _LoginPageState extends State<LoginPage> {
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Verify Your Details"), Text("1/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 1,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 40),
              const Text(
                "Enter your personal details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cardSel = 'customer';
                      });
                    },
                    child: Card(
                      shape: cardSel == 'customer'
                          ? new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFFF7B61A), width: 2.0),
                              borderRadius: BorderRadius.circular(4.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/customer.png',
                              height: 130,
                              width: 130,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Customer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cardSel = 'agent';
                      });
                    },
                    child: Card(
                      shape: cardSel == 'agent'
                          ? new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFFF7B61A), width: 2.0),
                              borderRadius: BorderRadius.circular(4.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/agent.png',
                              height: 130,
                              width: 130,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Agent",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                        "Please enter accurate information that matches your KYC documents.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Your Name",
                          hintText: "Enter Your Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "Enter Mobile Number",
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            "*We will be sending an OTP to verify your details"),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          labelText: "PAN",
                          hintText: "Enter PAN",
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                        ),
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
                              builder: (context) => const OTPValidation(),
                            ));
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
