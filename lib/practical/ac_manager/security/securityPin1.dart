import 'package:billspaymentapp/practical/ac_manager/security/security1.dart';
import 'package:billspaymentapp/practical/ac_manager/security/securityPin2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SecurityPin1 extends StatefulWidget {
  const SecurityPin1({super.key});

  @override
  State<SecurityPin1> createState() => _SecurityPin1State();
}

class _SecurityPin1State extends State<SecurityPin1> {
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
            Text('Enter current pin',style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 24
            ),
            ),
            Gap(15),
            Text('Enter your current Pin',style: TextStyle(
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
                  Get.to(SecurityPin2());

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
