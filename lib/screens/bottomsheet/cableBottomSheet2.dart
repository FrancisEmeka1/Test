import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CableBottomSheet2 extends StatelessWidget {
  const CableBottomSheet2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
                width: Get.width,
              ),
              Text('DSTV YANGA N2,500',style: TextStyle(
                fontWeight: FontWeight.w400,fontSize: 14
              ),
          
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
          Text('DSTV COMPACT N14,000',style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 14
          ),
          ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
              Gap(15),
              Container(
                height: 1.h,
                width: 370,
                color: Colors.grey,
              ),
              Gap(15),
              Text('DSTV COMPACT N14,000',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 14
              ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
