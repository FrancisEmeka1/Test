import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomPin extends StatelessWidget {
  const CustomPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Row(
          children: [
            Container(
              height: 54.h,
              width: 53.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60)
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 54.h,
              width: 53.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60)
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 54.h,
              width: 53.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60)
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 54.h,
              width: 53.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60)
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              height: 54.h,
              width: 53.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60)
              ),
              child:
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
