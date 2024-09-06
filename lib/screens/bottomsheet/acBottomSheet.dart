import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'acBottomSheet2.dart';

class Ac_B0tt0mSheet extends StatelessWidget {
  const Ac_B0tt0mSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 50,width: Get.width,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Upload NIN Card',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 24
              ),),
            ),
            Gap(20),
            Container(
                height: 100.h,
                width: Get.width,
                child: Image(image: AssetImage('images/Frame98.png'),
                fit: BoxFit.fill,
                )),
            Gap(20),
            GestureDetector(
              onTap: (){
                showModalBottomSheet( builder: (builder){
                  return Container(
                    height: 700.h,
                    child: AC_B0ttomSheet2(),
                  );
                }, context: context);
              },
              child: Container(
                height: 50.h,
                width: Get.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade800
                ),
                child: Center(
                  child: Text('Confirm',style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,color:Colors.white ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
