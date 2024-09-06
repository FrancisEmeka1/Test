import 'package:billspaymentapp/practical/ac_manager/security/securityPin1.dart';
import 'package:billspaymentapp/screens/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'changepassword.dart';

class Securt1 extends StatefulWidget {
  const Securt1({super.key});

  @override
  State<Securt1> createState() => _Securt1State();
}

class _Securt1State extends State<Securt1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
              width: Get.width,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(BottomNav());
                    },
                    child: Icon(Icons.arrow_back_rounded)),
                Gap(10),
                Text('Security',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w500

                ),)
              ],
            ),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(SecurityPin1());
              },
              child: Container(
                height: 40.h,
                width: Get.width,
                child: Text('Change PIN',style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 14
                ),),
              ),
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.black,
            ),
            Gap(20),
            GestureDetector(
              onTap: (){
                Get.to(ChangePassword());
              },
              child: Container(
                height: 40.h,
                width: Get.width,
                child: Text('Change Password',style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 14
                ),),
              ),
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.black,
            ),
            Gap(20),
            Container(
              height: 40.h,
              width: Get.width,
              child: Text('Enable Fingerprint',style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 14
              ),),
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
