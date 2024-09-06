import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ElectricBottomSheet2 extends StatefulWidget {
  const ElectricBottomSheet2({super.key});

  @override
  State<ElectricBottomSheet2> createState() => _ElectricBottomSheet2State();
}

class _ElectricBottomSheet2State extends State<ElectricBottomSheet2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: Get.width,
      child: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Icon(Icons.not_interested_outlined,size: 60,
              color: Color(0xffD9BE00),
            ),
            Gap(20),
            Text('Review Summary',style: TextStyle(
              fontWeight: FontWeight.w500,fontSize: 20
            ),
            textAlign: TextAlign.center,
            ),
            Gap(30),
            Row(
              children: [
                Text('Customer Name',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.start,
                ),
                Gap(150),
                Text('Marcus Rashford',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Gap(10),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(10),
            Row(
              children: [
                Text('Meter No.',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.start,
                ),
                Gap(215),
                Text('8123456790',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Gap(10),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(10),
            Row(
              children: [
                Text('Plan',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.start,
                ),
                Gap(278),
                Text('Prepaid',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Gap(10),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(10),
            Row(
              children: [
                Text('Amount',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.start,
                ),
                Gap(260),
                Text('₦5,000',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Gap(10),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(10),
            Row(
              children: [
                Text('Units',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.start,
                ),
                Gap(305),
                Text('50',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Gap(10),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(30),
            Container(
              height: 48.h,
              width: 343.w,
              decoration: BoxDecoration(
                  color: Color(0xffADD0FF),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text('Continue',style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF)
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
