import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../dashboard/dash_1.dart';
import '../onboarding_flow/container.dart';

class Airtime_2 extends StatefulWidget {
  const Airtime_2({super.key});

  @override
  State<Airtime_2> createState() => _Airtime_2State();
}

class _Airtime_2State extends State<Airtime_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(Dash1());

                    },


                    child: Icon(Icons.arrow_back)),
                Gap(15),
                Text('airtime Recharge',style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff00062A)
                ),)
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 79.h,
                  width: 71.w,
                  decoration:  BoxDecoration(
                      image: DecorationImage
                        (image: AssetImage('images/Airtel.a.png'))

                  ),
                ),
                Gap(20),
                Container(
                  height: 79.h,
                  width: 71.w,
                  decoration:  BoxDecoration(
                      image: DecorationImage
                        (image: AssetImage('images/Mtn.m.png'))

                  ),
                ),
                Gap(20),
                Container(
                  height: 79.h,
                  width: 71.w,
                  decoration:  BoxDecoration(
                      image: DecorationImage
                        (image: AssetImage('images/Glo.g.png'))

                  ),
                ),
                Gap(20),
                Container(
                  height: 79.h,
                  width: 71.w,
                  decoration:  BoxDecoration(
                      image: DecorationImage
                        (image: AssetImage('images/9mobile.9.png'))

                  ),
                ),
              ],
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: 343.w,
              child: TextField(
                  keyboardType: TextInputType.phone,

                  decoration: InputDecoration(
                    labelText: '+123',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    hintText: '+123',
                  )
              ),
            ),
            Gap(20),
            Container(
              height: 48.h,
              width: 343.w,
              child: TextField(
                  keyboardType: TextInputType.phone,

                  decoration: InputDecoration(
                    labelText: 'Enter Amount',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    hintText: 'Enter Amount',
                  )
              ),
            ),
            Gap(20),
            Row(
              children: [
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('100',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('200',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('300',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('500',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('1000',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('1500',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                const Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('2000',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),
                const Gap(7),
                Container(
                  height: 20.h,
                  width: 40,
                  child: Text('5000',style: TextStyle(
                      color: Color(0xff2937F0)
                  ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFD8DC),
                  ),
                ),

              ],
            ),
            Gap(20),
           Container(
             height: 75.h,
           width: 341.w,
           color: Color(0xffCFD8DC),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20.0),
                       child: Text('Airtime amount',style: TextStyle(fontWeight: FontWeight.w500,
                         fontSize: 14
                       ),
                         textAlign: TextAlign.center,
                       ),

                     ),
                     Gap(150),
                     Text('500',style: TextStyle(
                       fontSize: 14,fontWeight: FontWeight.w500
                     ),
                       textAlign: TextAlign.center,
                     )
                   ],
                 ),
                 Container(
                   width: 300.w,
                   height: 2.h,
                   color: Colors.black,
                 ),
                  const Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20.0),
                       child: Text('Amount to pay (2% discount)',style: TextStyle(fontWeight: FontWeight.w500,
                           fontSize: 14
                       ),
                         textAlign: TextAlign.center,
                       ),

                     ),
                     Gap(65),
                     Text('490',style: TextStyle(
                         fontSize: 14,fontWeight: FontWeight.w500
                     ),
                       textAlign: TextAlign.center,
                     )
                   ],
                 ),
               ],
             ),
           ),
            Gap(30),
            CustomContainer()
          ],
        ),
      ),
    );
  }
}





