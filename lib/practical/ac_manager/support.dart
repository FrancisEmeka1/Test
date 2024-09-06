import 'package:billspaymentapp/practical/ac_manager/security/securityPin1.dart';
import 'package:billspaymentapp/practical/dashboard/dash_1.dart';
import 'package:billspaymentapp/screens/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
                Text('Support',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500

                ),)
              ],
            ),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(());
              },
              child: Container(
                height: 40.h,
                width: Get.width,
                child: Row(
                  children: [
                    Text('Reach on Whatsapp',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14
                    ),),
                    Gap(200),
                    Image(image: AssetImage('images/whatsapp.png'))
                  ],
                ),

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
                Get.to(());
              },
              child: Container(
                height: 40.h,
                width: Get.width,
                child: Row(
                  children: [
                    Text('Reach on Gmail',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14
                    ),),
                    Gap(220),
                    Image(image: AssetImage('images/gmail.png'))
                  ],
                ),
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
              child: Row(
                children: [
                  Text('Reach on Facebook',style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 14
                  ),),
                  Gap(200),
                  Image(image: AssetImage('images/facebook1.png'))
                ],
              ),
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
