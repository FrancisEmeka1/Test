import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../practical/air_time_flow/air_time3A.dart';
import '../../practical/onboarding_flow/container.dart';

class CableBottomSheet3 extends StatelessWidget {
  const CableBottomSheet3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
            Text('YYou are about to subscribe DSTV COMPACT on  813467128(MARCUS RASHFORD). '
                'You will be charged ₦14,000.',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400
            ),textAlign: TextAlign.center,),
            Gap(25),
            GestureDetector(
                onTap: (){
                  Get.to(Pin_code());
                },

                child: CustomContainer())

          ],
        ),
      ),



    );
  }
}
