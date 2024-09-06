import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../../screens/bottomsheet/bulkDataBottomSheet.dart';
import '../dashboard/dash_1.dart';
import '../onboarding_flow/container.dart';
import 'bulkData1.dart';

class BulkData2 extends StatefulWidget {
  const BulkData2({super.key});

  @override
  State<BulkData2> createState() => _BulkData2State();
}

class _BulkData2State extends State<BulkData2> {
  TextEditingController textarea = TextEditingController();
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
                            Get.to(BulkData());

                          },


                          child: Icon(Icons.arrow_back)),
                      Gap(15),
                      Text('Bulk Data Subscription',style: TextStyle(
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
                    // height: 150.h,
                    // width: 343.w,
                    child: TextField(
                        controller: textarea,
                        keyboardType: TextInputType.multiline,

                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          hintText: '+123',
                          suffixIcon: Icon(Icons.person_pin_outlined,size: 15,),
                        )
                    ),
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Icon(Icons.not_interested_outlined,size: 10,
                        color: Colors.black,
                      ),
                      Gap(5),
                      Text('Enter each number on a line, separated by Enter key',
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                      )
                    ],
                  ),
                  Gap(20),
                  Container(
                    height: 50.h,
                    width: 343.w,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText:'Enter Amount'
                      ),
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
                            Text('2000',style: TextStyle(
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
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text('Numbers to recharge',style: TextStyle(fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),
                                textAlign: TextAlign.center,
                              ),

                            ),
                            Gap(140),
                            Text('4',style: TextStyle(
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
                            Text('1960',style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w500
                            ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            builder: (context) {
                              return SizedBox(
                                height: 300.h,
                                child: BulkDataBottomSheet(),
                              );
                            },
                            context: context);
                      },

                      child: CustomContainer()),
                ],




            )
        )
    );
  }
}
