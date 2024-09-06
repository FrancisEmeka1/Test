import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/onboarding_flow/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomNav.dart';
import '../../screens/bottomsheet/electricBottomSheet.dart';
import '../../screens/bottomsheet/electricBottomSheet_prepaid.dart';
import '../dashboard/dash_1.dart';
import 'electricity_flow2.dart';

class ElectricityFlow1 extends StatefulWidget {
  const ElectricityFlow1({super.key});

  @override
  State<ElectricityFlow1> createState() => _ElectricityFlow1State();
}

class _ElectricityFlow1State extends State<ElectricityFlow1> {

  
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
                Text('Electricity',style: TextStyle(
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
                        return const ElectricBottomSheet();
                     });
                     },
                   icon:  Icon(Icons.arrow_drop_down),
                 )
               )

           ),
               ),
            Gap(20),
            Row(
              children: [
              SizedBox(
              height: 48.h,
              width: 162.w,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    hintText: 'Prepaid',
                    suffixIcon: IconButton(
                      iconSize: 20.h,
                      onPressed: (){
                        showModalBottomSheet(context: context,
                            builder: (context){
                          return ElectricBottomSheet2();
                        }
                        );
                      },
                      icon:Icon(Icons.arrow_drop_down_sharp),
                    )
                )
                    )
                  ),
                Gap(20),
                SizedBox(
                    height: 48.h,
                    width: 162.w,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            hintText: 'Prepaid',
                            suffixIcon: IconButton(
                              iconSize: 20.h,
                              onPressed: (){
                                showModalBottomSheet(context: context,
                                    builder: (context){
                                      return ElectricBottomSheet2();
                                    }
                                );
                              },
                              icon:Icon(Icons.arrow_drop_down_sharp),
                            )
                        )
                    )
                ),

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
                      hintText: 'Meter No.',
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
                      hintText: 'Amount.',
                  )

              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.query_builder_rounded),
                Gap(5),
                Text('₦1000 is equivalent to 10 units',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Gap(50),
            GestureDetector(
                onTap: (){
                  Get.to(Electricity_Pin());
                },

                child: CustomContainer())
          ],
        ),
      ),
    );
  }
}
