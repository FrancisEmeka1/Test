import 'package:flutter/material.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({super.key});

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){


        },
        child: Column(
          children: [
            Image.asset('images/Modal1')
          ],
        ),
      ),
    );
  }
}
