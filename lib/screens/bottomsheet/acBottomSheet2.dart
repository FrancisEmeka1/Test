import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../practical/ac_manager/account_manager_acc/ac_manager_acc3.dart';

class AC_B0ttomSheet2 extends StatelessWidget {
  const AC_B0ttomSheet2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Upload NIN Card',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 20
              ),),
            ),
            Gap(20),
            Container(
              height: 100.h,
              width: 300.w,
              color: Color(0xffF6ECFF
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.image_rounded),
                      Gap(15),
                      Column(children: [
                        Text('IMG3455RHF.jpg',style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500
                        ),
                        ),
                        Gap(5),
                        Text('1457KB',style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: 12
                        ),)

                      ],),
                        Gap(100),
                        Icon(Icons.cancel_outlined)

                      ],
                    )
                  ],
                ),
              ),
            ),
            Gap(10),
            Container(
              height: 48.h,
              width: Get.width,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: 'ID Card number...'
                ),
              ),
            ),
            Gap(10),
            GestureDetector(
              onTap: (){
                Get.to(Account_Upgrade_Last());
              },
              child: Container(
                height: 30.h,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.blue.shade800,borderRadius:
                BorderRadius.circular(30)),
                child: Center(
                  child: Text('Confirm',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
            )
        ]
          ),
      ),
    );
  }
}
