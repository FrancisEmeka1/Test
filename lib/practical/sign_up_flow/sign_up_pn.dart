import 'package:billspaymentapp/practical/sign_up_flow/sign_up_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUP_PN extends StatefulWidget {
  const SignUP_PN({super.key});

  @override
  State<SignUP_PN> createState() => _SignUP_PNState();
}

class _SignUP_PNState extends State<SignUP_PN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.h,
              width: double.infinity.w,
            ),
            Text('Enter Your Phone Number', style: TextStyle(
              color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700,
            ),

            ),
            Gap(10),
            Text('Please enter a verifiable phone number. An OTP will be sent to your line soon.',
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,),
              textAlign: TextAlign.start,

            ),
            Gap(50),
            Container(
              height: 48.h,
              width: 320.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: '+234',
                ),
              ),

             ),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(SignUpOTP());
              },
              child: Container(
                height: 48.h,
                width: 320.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),color: Colors.blue.shade300,
                ),
                child:
                Center(
                  child: Text(
                    'Continue', style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 18, color: Colors.white
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
