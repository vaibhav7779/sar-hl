import 'package:flutter/material.dart';
import 'package:hl_demo/components/finalOffer.dart';

class GenerateOffer extends StatefulWidget {
  const GenerateOffer({super.key});

  @override
  State<GenerateOffer> createState() => _GenerateOfferState();
}

class _GenerateOfferState extends State<GenerateOffer> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                "assets/hourGlass.png",
                fit: BoxFit.cover,
                width: 60,
                height: 100,
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Please wait while we are generating offer for your dream home",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
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
                        builder: (context) => const FinalOffer(),
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
