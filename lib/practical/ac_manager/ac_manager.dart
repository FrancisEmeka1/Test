import 'package:billspaymentapp/practical/ac_manager/security/changepassword.dart';
import 'package:billspaymentapp/practical/ac_manager/security/security1.dart';
import 'package:billspaymentapp/practical/ac_manager/support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomNav.dart';
import '../sign_up_flow/sign_up.dart';
import 'account_manager_acc/ac_manager_Acc.dart';
import 'ac_manager_PI.dart';

class AC_Profile extends StatefulWidget {
  const AC_Profile({super.key});

  @override
  State<AC_Profile> createState() => _AC_ProfileState();
}

class _AC_ProfileState extends State<AC_Profile> {
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
                      Get.to(BottomNav());
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
                ),
              ),
            ),
            Gap(30),
            Container(
              height: 110.h,
              width: Get.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Color(0xffF6ECFF)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID Verification',style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 16
                        ),),
                        Gap(110),
                        Container(
                          height: 20.h,
                          width: 100.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 1,color: Colors.black)
                          ),
                          child: const Center(
                            child: Text('60% completed',style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),),
                          ),
                        ),
                      ],
                    ),
                Gap(10),
                const Text('Please input all the necessary information here and'
                    ' get verified to enjoy bigger limits. Verify Now',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w400
                )
                ),
                  ],
                ),
              ),
            ),
            Gap(10),
             GestureDetector(
               onTap: (){
                 Get.to(Personal_Information1());
               },
               child: Container(
                height: 70.h,
                width: 343.w,
                decoration: const BoxDecoration(
                ),
                child:  const Row(
                  children: [
                    Icon(Icons.person_pin),
                    Gap(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Personal Information ',style: TextStyle(
                        fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                    ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(10),
                    Text('Full name, Address, Phone Number,...',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                        0xff00062A
                    )
                    ),
                      textAlign: TextAlign.right,
                    ),

                         ],
                       ),
                    Gap(50),
                    Icon(Icons.arrow_forward_ios_outlined)
                ]
                     ),
                   ),
             ),
            GestureDetector(
              onTap: (){
                Get.to(AC_Manager_Acc());
              },
              child: Container(
                height: 70.h,
                width: 343.w,
                decoration: const BoxDecoration(
                ),
                child:  const Row(
                    children: [
                      Icon(Icons.lock_rounded),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Account Information ',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                          ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(10),
                          Text('Account Tier, Transaction Limit, Upgrade',style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                              0xff00062A
                          )
                          ),
                            textAlign: TextAlign.right,
                          ),

                        ],
                      ),
                      Gap(30),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ]
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(Securt1());
              },
              child: Container(
                height: 70.h,
                width: 343.w,
                decoration: const BoxDecoration(
                ),
                child:  const Row(
                    children: [
                      Icon(Icons.verified_user_sharp),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Security ',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                          ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(10),
                          Text('Change PIN, Change Password, Biometrics',style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                              0xff00062A
                          )
                          ),
                            textAlign: TextAlign.right,
                          ),

                        ],
                      ),
                      Gap(15),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ]
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to( Support());
              },
              child: Container(
                height: 70.h,
                width: 343.w,
                decoration: const BoxDecoration(
                ),
                child:  const Row(
                    children: [
                      Icon(Icons.comment),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Support ',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                          ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(10),
                          Text('Help desk',style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                              0xff00062A
                          )
                          ),
                            textAlign: TextAlign.right,
                          ),

                        ],
                      ),
                      Gap(225),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ]
                ),
              ),
            ),
            Gap(10),
            GestureDetector(
              onTap: (){
                Get.to(SignUp1());
              },
              child: const Text('Logout ',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 18,
                  decoration: TextDecoration.underline,color: Colors.blue,
              ),),
            )
          ]
    )
    )
    );
  }
}
