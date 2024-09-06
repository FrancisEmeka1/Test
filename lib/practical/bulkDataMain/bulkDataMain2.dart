import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomsheet/airtimeBottomsheet1.dart';
import '../../screens/bottomsheet/bulkDataMainBottomSheet.dart';
import '../dashboard/dash_1.dart';
import 'bulkDataMain1.dart';

class BulkDataMain2 extends StatefulWidget {
  const BulkDataMain2({super.key});

  @override
  State<BulkDataMain2> createState() => _BulkDataMain2State();
}

class _BulkDataMain2State extends State<BulkDataMain2> {
  double lineLength= 130;
  double lineThickness= 3;
  double dashGapLength= 5;
  double endDottedThickness =5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Padding(
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
                              Get.to(BulkDataMain1());

                            },


                            child: Icon(Icons.arrow_back)),
                        Gap(15),
                        Text('Data Subscription',style: TextStyle(
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
                        GestureDetector(
                          onTap: (){
    showModalBottomSheet( builder:(context){
    return Container(
    height: 300.h,
    child: BulkDataMainBottomSheet()
    );

    },
    context: context);
    },

                          child: Container(
                            height: 79.h,
                            width: 71.w,
                            decoration:  BoxDecoration(
                                image: DecorationImage
                                  (image: AssetImage('images/Mtn.m.png'))

                            ),
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
                          keyboardType: TextInputType.multiline,

                          decoration: InputDecoration(
                            labelText: '+123',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            hintText: '+123',
                            suffixIcon: Icon(Icons.person_pin_outlined,size: 15,),
                          )
                      ),
                    ),
                    Gap(20),
                    Container(
                      height: 500.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)

                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hot Deals🔥',style: TextStyle(
                                    fontWeight: FontWeight.w500,fontSize: 14
                                ),
                                ),
                                Gap(27),
                                Text('SME',style: TextStyle(
                                    fontWeight: FontWeight.w500,fontSize: 14
                                ),),
                                Gap(27),
                                Text('CUG',style: TextStyle(
                                    fontWeight: FontWeight.w500,fontSize: 14
                                ),),
                                Gap(27),
                                Text('Direct',style: TextStyle(
                                    fontWeight: FontWeight.w500,fontSize: 14
                                ),),
                                Gap(27),
                                Text('Coupon',style: TextStyle(
                                    fontWeight: FontWeight.w500,fontSize: 14
                                ),),

                              ],
                            ),
                            Gap(30),
                            Container(
                              height: 1.h,
                              width: 320.w,
                              color: Colors.black,
                            ),
                            Gap(30),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          showModalBottomSheet( builder:(context){
                                            return Container(
                                                height: 300.h,
                                                child: AirtelBottomSheet()
                                            );

                                          },
                                              context: context);
                                        },

                                        child: Container(
                                          height: 130.h,
                                          width: 147.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Color(0xff00062A),
                                              shape: BoxShape.rectangle
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 10.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text('5GB',style: TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 16,
                                                    color: Color(0xffFFFFFF)
                                                ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Gap(20),
                                                DottedLine(
                                                  lineLength: 130,
                                                  lineThickness: 3,
                                                  dashGapLength: 5,
                                                  dashColor: Color(0xffFFFFFF),
                                                  alignment: WrapAlignment.center,
                                                ),
                                                Gap(10),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: Column(
                                                        children: [
                                                          Text('Validity',style: TextStyle(
                                                              fontSize: 10,fontWeight: FontWeight.w400,
                                                              color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          Gap(10),
                                                          Text('30 days',style: TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500
                                                              ,color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Gap(5),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: Column(
                                                        children: [
                                                          Text('Validity',style: TextStyle(
                                                              fontSize: 10,fontWeight: FontWeight.w400,
                                                              color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          Gap(10),
                                                          Text('30 days',style: TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500
                                                              ,color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          )
                                                        ],
                                                      ),
                                                    )

                                                  ],
                                                )

                                              ],
                                            ),
                                          ),




                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Gap(5),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(5),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                                Gap(5),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(5),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                                Gap(5),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(5),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 130.h,
                                          width: 147.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Color(0xff00062A),
                                              shape: BoxShape.rectangle
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 10.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text('5GB',style: TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 16,
                                                    color: Color(0xffFFFFFF)
                                                ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Gap(20),
                                                DottedLine(
                                                  lineLength: 130,
                                                  lineThickness: 3,
                                                  dashGapLength: 5,
                                                  dashColor: Color(0xffFFFFFF),
                                                  alignment: WrapAlignment.center,
                                                ),
                                                Gap(10),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: Column(
                                                        children: [
                                                          Text('Validity',style: TextStyle(
                                                              fontSize: 10,fontWeight: FontWeight.w400,
                                                              color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          Gap(10),
                                                          Text('30 days',style: TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500
                                                              ,color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Gap(5),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: Column(
                                                        children: [
                                                          Text('Validity',style: TextStyle(
                                                              fontSize: 10,fontWeight: FontWeight.w400,
                                                              color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          Gap(10),
                                                          Text('30 days',style: TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500
                                                              ,color: Color(0xffFFFFFF)
                                                          ),
                                                            textAlign: TextAlign.center,
                                                          )
                                                        ],
                                                      ),
                                                    )

                                                  ],
                                                )

                                              ],
                                            ),
                                          )
                                      ),

                                    ],
                                  ),
                                ),
                                Gap(5),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 3),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: 147.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Color(0xff00062A),
                                            shape: BoxShape.rectangle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('5GB',style: TextStyle(
                                                  fontWeight: FontWeight.w500,fontSize: 16,
                                                  color: Color(0xffFFFFFF)
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Gap(20),
                                              DottedLine(
                                                lineLength: 130,
                                                lineThickness: 3,
                                                dashGapLength: 5,
                                                dashColor: Color(0xffFFFFFF),
                                                alignment: WrapAlignment.center,
                                              ),
                                              Gap(10),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Gap(5),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                    child: Column(
                                                      children: [
                                                        Text('Validity',style: TextStyle(
                                                            fontSize: 10,fontWeight: FontWeight.w400,
                                                            color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Gap(10),
                                                        Text('30 days',style: TextStyle(
                                                            fontSize: 16,fontWeight: FontWeight.w500
                                                            ,color: Color(0xffFFFFFF)
                                                        ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                      ],
                                                    ),
                                                  )

                                                ],
                                              )

                                            ],
                                          ),
                                        ),




                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    )
                  ]
              )
          ),
        )
    );
  }
}
