import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CableBottomSheet extends StatelessWidget {
  const CableBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
          Text('Select Provider',style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 18
          ),
            textAlign: TextAlign.start,
          ),
            Gap(40),
            Row(
              children: [
                Text('DSTV',style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w400
                ),),
              ],
            ),
            Gap(20),
            Container(
              height: 1.h,
              width: 330.w,
              color: Colors.black54,
            ),
            Gap(20),
            Row(
              children: [
                Text('GOTV',style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w400
                ),),
              ],
            ),

          ],

        ),
      ),

    );
  }
}
