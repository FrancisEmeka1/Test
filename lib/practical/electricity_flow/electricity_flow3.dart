import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';
import 'electricity_flow2.dart';

class Electricity_Verification extends StatefulWidget {
  const Electricity_Verification({super.key});

  @override
  State<Electricity_Verification> createState() => _Electricity_VerificationState();
}

class _Electricity_VerificationState extends State<Electricity_Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
            width: 343.w,
            child: GestureDetector(
                onTap: (){
                  Get.to(Electricity_Pin());
                },

                child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back)
                )
            ),
          ),
        CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('images/good.png'),
            ),

            //this is a test
            Gap(30),
            Text('Payment Successful',style: TextStyle(
            fontWeight: FontWeight.w700,fontSize: 24
            ),
            textAlign: TextAlign.center,
            ),
            Text(' Your electricity bill has been paid successfully!',style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.w400
            ),
            textAlign: TextAlign.center,
            ),
          Gap(100),
          Row(
            children: [
              Text('Provider',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(210),

              Text('Ibadan Electricity',style: TextStyle(
               fontSize: 14,fontWeight: FontWeight.w500 
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Token',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(160),

              Text('453-1234-4567-2367-9021',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Customer Name',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(155),

              Text('Marcus Rashford',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Address',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(180),

              Text('No.20 Olosan, Alakia',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Meter No.',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(230),

              Text('8123456790',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Plan',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(290),

              Text('Prepaid',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Amount',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(270),

              Text('₦5,000',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(10),
          Container(
            height: 1.h,
            width: 345.w,
            color: Colors.grey,
          ),
          Gap(10),
          Row(
            children: [
              Text('Units',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
                textAlign: TextAlign.start,
              ),
              Gap(320),

              Text('50',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          Gap(50),
          Center(
            child: GestureDetector(
              onTap: (){
                Get.to(BottomNav());
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.download,color: Colors.blue,),
                    Text('Download Receipt',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14, color: Colors.blue
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 1.h,
            width: 135.w,
            color: Colors.blue,
          ),
          ]
        ),
            ),
      )
      );
  }
}
