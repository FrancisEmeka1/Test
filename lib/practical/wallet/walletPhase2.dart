import 'package:billspaymentapp/practical/wallet/walletPhase1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class WalletPhase2 extends StatefulWidget {
  const WalletPhase2({super.key});

  @override
  State<WalletPhase2> createState() => _WalletPhase2State();
}

class _WalletPhase2State extends State<WalletPhase2> {
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
            Text('Top-Up Balance',style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
            ),
            Gap(30),
            Text('To top-up your wallet balance, Transfer the '
                'amount you want to recharge to the account'
                ' details provided below. Your account will be'
                ' credited in minutes.',style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 18
            ),),
            Gap(30),
            Container(
              height: 140.h,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1,color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bank Name: WEMA BANK', style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w400
                    ),
                    ),
                    Gap(10),
                    Text('Account Name: Crystal Technologies ltd.', style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w400
                    ),
                    ),
                    Gap(10),
                    Row(
                      children: [
                        Text('Account Number: 1234567890', style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w400
                        ),
                        ),
                        Gap(5),
                        Icon(Icons.copy,color: Colors.blue,size: 15,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(30),
            GestureDetector(
              onTap: (){
                Get.to(());
              },

              child: Container(
                height: 48.h,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('I have sent the money',style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 18, color: Colors.white
                  ),
                    textAlign: TextAlign.center
                    ,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
