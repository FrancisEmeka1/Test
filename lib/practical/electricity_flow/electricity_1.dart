import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/onboarding_flow/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomsheet/electricBottomSheet.dart';
import '../dashboard/dash_1.dart';
import 'electricity_flow2.dart';

class ElectricityFlow1 extends StatefulWidget {
  const ElectricityFlow1({super.key});

  @override
  State<ElectricityFlow1> createState() => _ElectricityFlow1State();
}

class _ElectricityFlow1State extends State<ElectricityFlow1> {
  List<String> Names = [
   'Ibadan Electricity','Abuja Electricity','Ikeja Electricity',
    'Benin Electricity','Yola Electricity','Eko Electricity','Jos Electricity',
    'Kano Electricity','Port harcourt','Enugu Electricity','Kaduna Electricity'
  ];
  
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
                     Get.to(Dash1());
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
                   icon: const Icon(Icons.add),
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
                    suffixIcon: Icon(Icons.arrow_drop_down_rounded)
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
                            suffixIcon: Icon(Icons.arrow_drop_down_rounded)
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
