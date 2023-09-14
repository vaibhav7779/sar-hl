import 'package:flutter/material.dart';
import 'package:hl_demo/components/personalDetailsNTB.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

bool isChecked = false;

class OTPValidationNTB extends StatefulWidget {
  const OTPValidationNTB({super.key});

  @override
  State<OTPValidationNTB> createState() => _OTPValidationNTBState();
}

class _OTPValidationNTBState extends State<OTPValidationNTB> {
  OtpFieldController otpController = OtpFieldController();
  bool? check2 = false;

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
              const SizedBox(height: 30),
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
              const SizedBox(height: 20),
              const Text(
                "Aadhar Details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter OTP",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    OTPTextField(
                        obscureText: true,
                        controller: otpController,
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        fieldWidth: 45,
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 15,
                        style: const TextStyle(fontSize: 32),
                        onChanged: (pin) {
                          print("Changed: $pin");
                        },
                        onCompleted: (pin) {
                          print("Completed: $pin");
                        }),
                    const SizedBox(height: 20),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                              color: Color.fromRGBO(105, 105, 105, 1),
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: check2,
                    onChanged: (bool? value) {
                      setState(() {
                        check2 = value;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Flexible(
                    child: Text(
                      "By providing the OTP,I confirm and accept UIDAI will share my details with ICICI bank for loan processing",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
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
                                    const PersonalDetailsNTB()));
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
