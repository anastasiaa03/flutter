import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF039EA2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Spacer(),
          const Text(
            "medinow",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: "Arial"),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Meditate With Us!",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            alignment: Alignment.center,
            child: const Text(
              "Sign in with Apple",
              style: TextStyle(fontFamily: "Robor"),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFCDFDFE)),
            alignment: Alignment.center,
            child: const Text("Continue with Email or Phone", style: TextStyle(fontFamily: "Robor"),
          ),
          ),

          const Text(
            "Continue With Google",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          
          const Spacer(),
          Image.asset("assets/meditativeBoy.png"),
          const Spacer(),
        ]),
      ),
    );
  }
}
