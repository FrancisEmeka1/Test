import 'package:billspaymentapp/practical/ac_manager/security/security1.dart';
import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../sign_in_flow/login.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isvisble = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
              width: Get.width,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: (){
                      Get.to( Securt1());
                    },
                    child: Icon(Icons.arrow_back_rounded))),
            Gap(30),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Change password',style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.w700
              ),),
            ),
            Gap(20),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Please enter your current password '
                  'and the new password here',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400
              ),),
            ),
            Gap(30),
            Container(
              height: 48.h,
              width: Get.width,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: 'Enter current password',
                ),
              ),
            ),
            Gap(10),
            Align(
              alignment: Alignment.topRight,
              child: Text('Reset password',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 16,
                decoration: TextDecoration.underline,
              ),
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: 'Enter current password',
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: 'Enter current password',
                ),
              ),
            ),
            Gap(50),
            GestureDetector(
                onTap: (){
                  Get.to(signInLogin());
                },
                child: CustomContainer())

          ],
        ),
      ),
    );
  }
}
