import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../screens/bottomsheet/acBottomSheet.dart';
import '../../../screens/bottomsheet/acBottomSheet2.dart';

class Account_Upgrade_Last extends StatefulWidget {
  const Account_Upgrade_Last({super.key});

  @override
  State<Account_Upgrade_Last> createState() => _Account_Upgrade_LastState();
}

class _Account_Upgrade_LastState extends State<Account_Upgrade_Last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
              width: Get.width,
            ),
            Container(
              height: 50.h,
              width: Get.width,
              decoration: BoxDecoration(color: Colors.greenAccent.shade100),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30),
                child: Row(
                  children: [
                    Icon(Icons.check_circle_outline,color: Colors.greenAccent.shade200,
                    ),
                    Gap(20),
                    Column(
                      children: [
                        Text('Document uploaded successfully. '
                            'Please wait a few days for your documents '
                            'yo be reviewed',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,
                        fontSize: 14
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              
            ),
            Gap(30),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Account Upgrade',style: TextStyle(fontSize: 24,fontWeight:
              FontWeight.w700
              ),),
            ),
            Gap(20),
            Align(
              alignment: Alignment.topLeft,
              child: Text('To upgrade your account tier, you need to complete the following'
                  ' steps to verify your identity.',style: TextStyle(fontWeight: FontWeight.w400
                  ,fontSize: 18
              ),),
            ),
            Gap(20),
            Container(
                height: 80.h,
                width: Get.width,
                child: Image(image: AssetImage('images/Frame65.png'),
                  fit: BoxFit.fill,
                )),
            Gap(20),
            Container(
                height: 80.h,
                width: Get.width,
                child: Image(image: AssetImage('images/Frame66.png'),
                  fit: BoxFit.fill,
                ))
          ],
        ),
      ),
    );
  }
}

