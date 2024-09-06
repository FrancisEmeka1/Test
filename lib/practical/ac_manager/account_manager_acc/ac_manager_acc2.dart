import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../screens/bottomsheet/acBottomSheet.dart';
import '../../../screens/bottomsheet/acBottomSheet2.dart';

class Account_Upgrade extends StatefulWidget {
  const Account_Upgrade({super.key});

  @override
  State<Account_Upgrade> createState() => _Account_UpgradeState();
}

class _Account_UpgradeState extends State<Account_Upgrade> {
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
            Icon(Icons.arrow_back_rounded),
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
            GestureDetector(
              onTap: (){
                showModalBottomSheet( builder: (context){
                  return Container(
                    height: 300.h,
                    child:  Ac_B0tt0mSheet(),
                  );
                }, context: context);
              },
              child: Container(
                  height: 80.h,
                  width: Get.width,
                  child: Image(image: AssetImage('images/Frame65.png'),
                  fit: BoxFit.fill,
                  )),
            ),
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
