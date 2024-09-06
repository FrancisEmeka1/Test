import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/wallet/walletPhase1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomsheet/walletBottomSheet2.dart';

class WalletPhase3 extends StatefulWidget {
  const WalletPhase3({super.key});

  @override
  State<WalletPhase3> createState() => _WalletPhase3State();
}

class _WalletPhase3State extends State<WalletPhase3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 60.h,
    width: Get.width,
    ),
    GestureDetector(
    onTap: (){
    Get.to(Walletphase1());
    },

    child: Icon(Icons.arrow_back_rounded)),
    Gap(30),
    Text('Send money',style: TextStyle(fontSize: 24,
    fontWeight: FontWeight.w700),
    textAlign: TextAlign.center,
    ),
    Gap(30),
    Text('Enter crystal username of the person you want to send money to. ',
      style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 18
    ),
    ),
      Gap(30),
      Container(
        height: 48.h,
        width: Get.width,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
                hintText:' @username',
            labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,
                wordSpacing: 3)
          ),
        ),
      ),
      Gap(30),
      Container(
        height: 48.h,
        width: Get.width,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText:' Amount',
              labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,
                  wordSpacing: 3)
          ),
        ),
      ),
      Gap(50),
      GestureDetector(
          onTap: (){
            showModalBottomSheet(builder: (context){
              return Container(
                  height: 300.h,
                  child: WalletBottomSheet2()
              );
            },
            context: context);

          },

          child: CustomContainer())

        ],
      ),
        )
    );
  }
}
