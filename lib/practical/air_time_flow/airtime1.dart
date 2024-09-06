import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';
import 'airtime2.dart';

class ScreenAirtime_1 extends StatefulWidget {
  const ScreenAirtime_1({super.key});

  @override
  State<ScreenAirtime_1> createState() => _ScreenAirtime_1State();
}

class _ScreenAirtime_1State extends State<ScreenAirtime_1> {
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
                      Get.to(BottomNav());

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
                Gap(7),
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
                Gap(7),
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
            GestureDetector(
                onTap: (){
                  Get.to(Airtime_2());
                },
                child: CustomContainer())
          ],
        ),
      ),
    );
  }
}
