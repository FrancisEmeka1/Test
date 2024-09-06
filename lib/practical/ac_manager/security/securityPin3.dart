import 'package:billspaymentapp/practical/ac_manager/security/security1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../sign_in_flow/login.dart';

class SecurityPin3 extends StatefulWidget {
  const SecurityPin3({super.key});

  @override
  State<SecurityPin3> createState() => _SecurityPin3State();
}

class _SecurityPin3State extends State<SecurityPin3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            GestureDetector(
                onTap: (){
                  Get.to(Securt1());
                },
                child: Icon(Icons.arrow_back)

            ),
            Gap(20),
            Text('Enter New pin again',style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 24
            ),
            ),
            Gap(15),
            Text('Re-enter your new Pin',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400
            ),
            ),
            Gap(40),
            // Padding(
            // padding: const EdgeInsets.all(.0),
            PinCodeTextField(
              appContext: context,
              length: 5, // Number of digits
              onChanged: (value) {
                // Handle changes
                if(value.length==5){
                  Get.to(signInLogin());

                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 50.h,
                  fieldWidth: 50.w,
                  activeFillColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.grey,
                  selectedFillColor: Colors.grey

              ),
              keyboardType: TextInputType.number,
              obscureText: true, // Hide the input text for security
            ),
          ],
        ),
      ),
    );
  }
}
