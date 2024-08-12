import 'package:billspaymentapp/practical/sign_up_flow/sign_up_vc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../electricity_flow/electricity_flow3.dart';

class SignUpOTP extends StatefulWidget {
  const SignUpOTP({super.key});

  @override
  State<SignUpOTP> createState() => _SignUpOTPState();
}

class _SignUpOTPState extends State<SignUpOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.h,
              width: double.infinity,
            ),
            Text('Phone number Verification', style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700,
            ),
              textAlign: TextAlign.start,
            ),
            Text('Enter the OTP sent to your phone number', style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 18
            ),
            textAlign: TextAlign.start,
            ),
            Gap(80),
            PinCodeTextField(
              appContext: context,
              length: 4, // Number of digits
              onChanged: (value) {
                if(value.length==4){
                  Get.to(SignUpVC());
                }
                // Handle changes
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 50.h,
                  fieldWidth: 50.w,
                  activeColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedFillColor: Colors.grey,
                  selectedColor: Colors.grey
              ),
              keyboardType: TextInputType.number,
              obscureText: true, // Hide the input text for security
            ),
            Gap(35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t get the code?',style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w400
                ),
                ),
                Text(' Resend code', style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 18, color: Colors.blue
                ),)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
