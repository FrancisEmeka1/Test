import 'package:billspaymentapp/practical/wallet/walletPhase3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../dashboard/dash_1.dart';

class WalletVC extends StatefulWidget {
  const WalletVC({super.key});

  @override
  State<WalletVC> createState() => _WalletVCState();
}

class _WalletVCState extends State<WalletVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(WalletPhase3());
                  },

                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back))

              ),
              Gap(200),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/good.png'),
              ),

              //this is a test
              Gap(30),
              Text('Transaction Completed',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 24
              ),
                textAlign: TextAlign.center,
              ),
              Text('Your transfer of ₦500 to @pojusam has been completed successfully',
                style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400
              ),
                textAlign: TextAlign.center,
              ),
              Gap(80),
              GestureDetector(
                onTap: (){
                  Get.to( Dash1 ());
                },
                child: Text('Take Me to Dashboard',style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,fontSize: 18, color: Color(0xff2937F0
                )
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
