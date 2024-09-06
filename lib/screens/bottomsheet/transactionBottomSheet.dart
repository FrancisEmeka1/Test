import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TransactionBottomSheet extends StatelessWidget {
  const TransactionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
              width: Get.width,
            ),
        Center(
        child: Image.asset("images/Alert1.png",height: 50,),
        ),
            Gap(20),
            Row(
              children: [
                Text('Transaction ID',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(150),
                Text('AD23452WA',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),

              ],
            ),
            Gap(15),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(15),
            Row(
              children: [
                Text('Transaction Type',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(130),
                Text('Airtime Recharge',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(15),

              ],
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(15),
            Row(
              children: [
                Text('Number',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(190),
                Text('+2348131234567',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(15),

              ],
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(15),
            Row(
              children: [
                Text('Amount',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(250),
                Text('₦5,000',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                ),),
                Gap(15),

              ],
            ),
            Container(
              height: 1.h,
              width: Get.width,
              color: Colors.grey,
            ),
            Gap(20),
            Center(
              child: Text('Report problem',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w500,
                color: Colors.blue,
                decoration: TextDecoration.underline,decorationColor: Colors.blue
              ),),
            )

          ],

        ),
      ),
    );
  }
}
