import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../practical/wallet/walletPhase4.dart';

class WalletBottomSheet2 extends StatelessWidget {
  const WalletBottomSheet2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 50),
        child: Column(
          children: [
            Image.asset("images/Alert1.png",height: 50,),
            Gap(30),
            Text('You are about to send ₦500 to @pojusam. '
                'Please confirm to proceed',style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 18
            ),),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(WalletPin());
              },
              child: Container(
                height: 48.h,
                width: Get.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade800
                ),
                child: Center(
                  child: Text('Confirm',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
