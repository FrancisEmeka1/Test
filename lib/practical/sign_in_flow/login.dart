import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/onboarding_flow/password.dart';
import 'package:billspaymentapp/practical/onboarding_flow/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../sign_up_flow/sign_up.dart';

class signInLogin extends StatefulWidget {
  const signInLogin({super.key});

  @override
  State<signInLogin> createState() => _signInLoginState();
}

class _signInLoginState extends State<signInLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: 200.h,
              width: double.infinity,
            ),
            Text('Welcome to Crystal',style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w700
            ),
              textAlign: TextAlign.start,
            ),
             Text('Enjoy seamless services when you login',style:
              TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400
              ),
                textAlign: TextAlign.start,
              ),
            Gap(30),

            CustomTextFied(decoration: InputDecoration(
              labelText: 'Username/ Email address',

            ), style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 24,
                color: Color(0xff2937F0),
            ), labelText:'Username/ Email address',
            ),
            Gap(20),
           CustomPassword(),
            Gap(20),
            Row(
              children: [
                Text('Reset password',style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,fontWeight: FontWeight.w500,
                    color:Color(0xff00062A)
                ),),
                Gap(95),
                Text('Fingerprint Sign in',style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontWeight: FontWeight.w500,fontSize: 16,
                  color: Color(0xff2937F0),
                ),)
              ],
            ),
            Gap(100),
            GestureDetector(
                onTap: (){},

                child: CustomContainer()),
            Gap(10),
            Row
              (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Text('Don’t have an account?',style: TextStyle(
                fontWeight: FontWeight.w400,fontSize: 18,
                color: Color(0xff00062A)
              ),),
              GestureDetector(
                onTap: (){
                  Get.to(SignUp1());
                },
                child: Text(' Sign Up',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  color: Color(0xff2937F0)
                ),),
              )
            ],)
          ],
        ),
      ) ,
      
    );
  }
}
