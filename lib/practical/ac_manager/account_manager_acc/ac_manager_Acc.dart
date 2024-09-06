import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../ac_manager.dart';
import 'ac_manager_acc2.dart';

class AC_Manager_Acc extends StatefulWidget {
  const AC_Manager_Acc({super.key});

  @override
  State<AC_Manager_Acc> createState() => _AC_Manager_AccState();
}

class _AC_Manager_AccState extends State<AC_Manager_Acc> {
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
                    child: Icon(Icons.arrow_back_rounded))
            ),
            Gap(30),
            Container(
              height: 150.h,
              width: Get.width,
              child: Column(
                children: [
                  Row(
                    children: [
                            Container(
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(shape: BoxShape.circle,
                            color: Colors.blue.shade800),
                  child: Column(
                  children: [
                  Gap(15),
                  Center(
                  child: Text('M',style: TextStyle(fontWeight: FontWeight.w900,
                  fontSize: 45,color: Colors.white),)
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
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Marcus Rashford',style: TextStyle(fontSize: 24,
                                  fontWeight: FontWeight.w700),),
                              Gap(4),
                              Icon(Icons.check_circle_outline_rounded),
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
                              child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Row(
                                      children: [
                                        Text('crystalapp/rashford',style: TextStyle(
                                            fontSize: 12,fontWeight: FontWeight.w400
                                        ),),
                                        Gap(10),
                                        Icon(Icons.share,color: Colors.blue,size: 14,),

                                      ],
                                    ),
                                  )
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

            ),
            Gap(20),
            Container(
              height: 110.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF6ECFF),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Daily Limit',style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: 14
                        ),),
                        Gap(40),
                        Text('₦2,000',style: TextStyle(
                            fontWeight: FontWeight.w500,fontSize: 14
                        ),),
                      ],
                    ),
                    Gap(40),
                    Row(
                      children: [
                        Text('Amount spent - ',style: TextStyle(
                            fontWeight: FontWeight.w400,fontSize: 14
                        ),),
                        Text(' 10,000/12,000 ',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,color: Colors.blue
                        ),),
                      ],
                    ),
                  ],
                ),
              )
            ),
            Gap(20),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Account Tiers',style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.start,
              ),
            ),
            Gap(20),
            Container(
                height: 100.h,
                width: Get.width,
                child: Image(image: AssetImage('images/Frame.png',),fit: BoxFit.fill,)
            ),
            Gap(20),
            Container(
                height: 100.h,
                width: Get.width,
                child: Image(image: AssetImage('images/Frame94.png',),
                  fit: BoxFit.fill,)),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(Account_Upgrade());
              },
              child: Container(
                height: 48.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),color: Colors.blue.shade800
                ),
                child: Center(
                  child: Text('Upgrade to Tier 2',style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white
                  )),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
