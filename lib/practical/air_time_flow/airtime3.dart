import 'package:billspaymentapp/practical/onboarding_flow/pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'airtime2.dart';

class Airtime_flow3 extends StatefulWidget {
  const Airtime_flow3({super.key});

  @override
  State<Airtime_flow3> createState() => _Airtime_flow3State();
}

class _Airtime_flow3State extends State<Airtime_flow3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),

              GestureDetector(
                  onTap: (){
                    Get.to(Airtime_2());
            },



                  child: Icon(Icons.arrow_back)
              ),
              Gap(20),
              Text('Enter pin',style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 24
              ),
              ),
              Gap(15),
              Text('Enter your transaction Pin to continue',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400
              ),
              ),
              Gap(100),
              Row(
                children: [
                  Container(
                    height: 54.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 54.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 54.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 54.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 54.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ]


        ),
      ),
    );
  }
}
