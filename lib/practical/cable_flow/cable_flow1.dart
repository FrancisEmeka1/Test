import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/onboarding_flow/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomNav.dart';
import '../../screens/bottomsheet/cableBottomSheet.dart';
import '../../screens/bottomsheet/cableBottomSheet2.dart';
import '../../screens/bottomsheet/cableBottomSheet3.dart';
import '../../screens/bottomsheet/electricBottomSheet.dart';
import '../../screens/bottomsheet/electricBottomSheet_prepaid.dart';
import '../dashboard/dash_1.dart';
import 'cable_flow_pin.dart';


class Cable_Flow1 extends StatefulWidget {
  const Cable_Flow1({super.key});

  @override
  State<Cable_Flow1> createState() => _Cable_Flow1State();
}

class _Cable_Flow1State extends State<Cable_Flow1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(BottomNav());
                    },

                    child: Icon(Icons.arrow_back)),
                Gap(16),
                Text('Cable Subscription',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            Gap(20),
            SizedBox(
              height: 48.h,
              width: 344.w,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: 'Select Provider',
                      suffixIcon: IconButton(
                        iconSize: 20,
                        onPressed:(){
                          showModalBottomSheet(
                              context: context, builder: (context){
                            return CableBottomSheet();
                          });
                        },
                        icon:  Icon(Icons.arrow_drop_down),
                      )
                  )

              ),
            ),
            Gap(20),
            SizedBox(
                height: 48.h,
                width: 344.w,
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        hintText: 'Smartcard Number',

                    )
                )
            ),
            Gap(20),
            SizedBox(
                height: 48.h,
                width: 344.w,
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        hintText: 'Select Package',
                        suffixIcon: IconButton(
                          iconSize: 20.h,
                          onPressed: (){
                            showModalBottomSheet(context: context,
                                builder: (context){
                                  return CableBottomSheet2();
                                }
                            );
                          },
                          icon:Icon(Icons.arrow_drop_down_sharp),
                        )
                    )
                )
            ),

            Gap(50),
            GestureDetector(
                onTap: (){
                  Get.to(CableFlowPin());
                },

                child: CustomContainer())
          ],
        ),
      ),
    );
  }
}
