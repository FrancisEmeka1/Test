import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'ac_manager.dart';
import 'ac_manager_PI2.dart';

class Personal_Information1 extends StatefulWidget {
  const Personal_Information1({super.key});

  @override
  State<Personal_Information1> createState() => _Personal_Information1State();
}

class _Personal_Information1State extends State<Personal_Information1> {
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
                      Get.to(AC_Profile());
                    },
                    child: Icon(Icons.arrow_back_rounded))),
            Gap(10),
            Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.blue.shade800),
              child: Column(
                children: [
                  Gap(15),
                  Center(
                      child: Text('M',style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 30,color: Colors.white),)
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(shape: BoxShape.circle,
                          color: Colors.white),
                      child: Icon(Icons.camera_alt_outlined,size: 15,),
                    ),
                  ),
                ],
              ),
            ),
            Gap(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Marcus Rashford',style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w700),),
                Gap(10),
                Icon(Icons.check_circle_outline_rounded)
              ],
            ),
            Gap(10),
            Text('@marcusrashford',style: TextStyle(fontWeight: FontWeight.w400,
                fontSize: 16,color: Colors.black
            ),),
            Gap(10),
            Container(
              height: 30.h,
              width: 152.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1,color: Colors.black)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text('crystalapp/rashford',style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.w400
                      ),),
                      Gap(10),
                      Icon(Icons.share,color: Colors.blue,size: 14,),

                    ],
                  ),
                ),
              ),
            ),
            Gap(30),
            Row(
              children: [
                Container(
                  height: 48.h,
                  width: 150.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300,
                      border: Border.all(width: 0,color: Colors.grey.shade300, )
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 0,color: Colors.grey,)
                          )
                    ),
                  ),
                ),
                Gap(40),
                Container(
                  height: 48.h,
                  width: 150.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300,
                      border: Border.all(width: 0,color: Colors.grey.shade300, )
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade300,
                  border: Border.all(width: 0,color: Colors.grey.shade300, )
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade300,
                  border: Border.all(width: 0,color: Colors.grey.shade300, )
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  suffix: Icon(Icons.calendar_month_sharp)
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade300,
                  border: Border.all(width: 0,color: Colors.grey.shade300, )
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade300,
                  border: Border.all(width: 0,color: Colors.grey.shade300, )
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(Personal_Information2());
              },
              child: Container(
                height: 48.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade800
                ),
                child: Center(
                  child: Text('Update Details',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
