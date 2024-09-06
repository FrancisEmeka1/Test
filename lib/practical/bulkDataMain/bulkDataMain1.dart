import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';
import 'bulkDataMain2.dart';

class BulkDataMain1 extends StatefulWidget {
  const BulkDataMain1({super.key});

  @override
  State<BulkDataMain1> createState() => _BulkDataMain1State();
}

class _BulkDataMain1State extends State<BulkDataMain1> {
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
                      GestureDetector(
                        onTap: (){
                          Get.to(BulkDataMain2());
                        },
                        child: Container(
                          height: 79.h,
                          width: 71.w,
                          decoration:  BoxDecoration(
                              image: DecorationImage
                                (image: AssetImage('images/Airtel.a.png'))

                          ),
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
                    decoration:  BoxDecoration(
                        image: DecorationImage
                          (image: AssetImage('images/Airtel.a.png'))

                    ),
                  ),


                ]
            )
        )
    );
  }
}
