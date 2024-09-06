import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ElectricBottomSheet extends StatelessWidget {
  const ElectricBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.h,
      width: Get.width,
      child: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text("Ibadan Electricity",style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 14,
            ),
            textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Abuja Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Benin Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Yola Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Eko Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Jos Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Kano Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Port harcourt",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Enugu Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),
            Gap(8),
            Text("Kaduna Electricity",style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(8),
            Container(
              height: 1.h,
              width: 343.w,
              color: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}
