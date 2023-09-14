import 'package:flutter/material.dart';
import 'package:hl_demo/components/otpNTB.dart';
import 'package:hl_demo/components/personalDetails.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';

bool isChecked = false;

class TypeOfCustomer extends StatefulWidget {
  const TypeOfCustomer({super.key});

  @override
  State<TypeOfCustomer> createState() => _TypeOfCustomerState();
}

class _TypeOfCustomerState extends State<TypeOfCustomer> {
  OtpFieldController otpController = OtpFieldController();

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
                                builder: (context) => const PersonalDetails()));
                      },
                      child: const Text("Existing to Bank"),
                    ),
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
                                builder: (context) =>
                                    const OTPValidationNTB()));
                      },
                      child: const Text("New to Bank"),
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
