import 'package:billspaymentapp/practical/onboarding_flow/password.dart';
import 'package:billspaymentapp/practical/sign_up_flow/sign_up_pn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../sign_in_flow/login.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.h,),
              Text('Get Started with Crystal', style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black
              ),),
              Text('Enjoy seamless services on signing up!',style: TextStyle(
                fontSize: 18,
              ),),
              Gap(20),
              Row(
                children: [
                  Align(
                   alignment: Alignment.center,
                  ),
                   SizedBox(
              height: 48.h,
                width: 140.w,
                      child:
                      TextField
                        (style: TextStyle(
                           fontSize: 24, color: Colors.black
                         ),
                           decoration: InputDecoration(
                             labelText: "First Name",
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(30),
                             )
                           ),
      
                         ),
                   ),
                  Gap(67),
                  SizedBox(
                    height: 48.h,
                    width: 140.w,
                    child:
                    TextField
                      (style: TextStyle(
                        fontSize: 24, color: Colors.black
                    ),
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
      
                    ),
                  ),
                ],
              ),
              Gap(20),
              SizedBox(
                height: 48.h,
                width: 343.w,
                child:
                TextField
                  (style: TextStyle(
                    fontSize: 24, color: Colors.black
                ),
                  decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),
      
                ),
              ),
              Gap(20),
              SizedBox(
                height: 48.h,
                width: 343.w,
                child:
                CustomPassword()
      
                ),
      
              Gap(20),
              SizedBox(
                height: 48.h,
                width: 343.w,
                child:
                TextField
                  (style: TextStyle(
                    fontSize: 24, color: Colors.black
                ),
                  decoration: InputDecoration(
                      labelText: "Referer Code  (optional)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),
      
                ),
              ),
              Gap(20),
              Container(
                height: 50.h,
                width: 343.w,
                child: const Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    Gap(10),
                    SizedBox(
                      height: 70,
                      width: 300,
                      child: Text(' have read the terms and condition of this '
                          ' app.',
                        maxLines: 2,
                        style: TextStyle(
      
                        fontSize: 18, fontWeight: FontWeight.w400
                      ),
      
                      ),
                    ),
      
                  ],
                ),
              ),
              Gap(30),
              GestureDetector(
                onTap: (){
                  Get.to(SignUP_PN());
                },
                child: Container(
                  height: 48.h,
                  width: 343.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade300,
                ),
                   child:
                  const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 24),
                        ),
                    ),
                  ),
                ),
              ),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?', style: TextStyle(color: Colors.black,
                  fontSize: 18, fontWeight: FontWeight.w500
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(signInLogin());
                    },
                    child: Text(' Sign In', style: TextStyle(color: Colors.blue,
                    fontSize: 18, fontWeight: FontWeight.w500),),
                  )
                ],
              )
      
            ],
      
          ),
        ),
      ),
    );
  }
}
