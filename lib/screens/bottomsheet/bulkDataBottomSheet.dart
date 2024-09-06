import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../practical/air_time_flow/air_time3A.dart';
import '../../practical/bulkData/bulkData3.dart';
import '../../practical/bulkRechard/bulkData3.dart';

class BulkDataBottomSheet extends StatelessWidget {
  const BulkDataBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150.h,
      width: Get.width,

      child: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: 50.h,
              width: Get.width,

            ),
            Center(
              child: Image.asset("images/Alert1.png",height: 50,),
            ),

            Gap(10),
            Text('You are about to make a bulk recharge of ₦500 airtime to 4 numbers. '
                'You will be charged ₦1960..',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400
            ),textAlign: TextAlign.center,),
            Gap(25),
            GestureDetector(
                onTap: (){
                  Get.to(Pin_code_bulkData());
                },

                child: CustomContainer())

          ],
        ),
      ),



    );
  }
}

