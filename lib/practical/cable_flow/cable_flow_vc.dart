import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';

import 'cable_flow1.dart';



class CableFlowVC extends StatefulWidget {
  const CableFlowVC({super.key});

  @override
  State<CableFlowVC> createState() => _CableFlowVCState();
}

class _CableFlowVCState extends State<CableFlowVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0,horizontal: 15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.to(Cable_Flow1 ());
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
              Text('Subscription Complete',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 24
              ),
                textAlign: TextAlign.center,
              ),
              Text('Your cable subscription of ₦14,000 to 813467128(MARCUS RASHFORD)'
                  ' for DSTV COMPACT has been completed successfully.',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400
              ),
                textAlign: TextAlign.center,
              ),
              Gap(80),
              GestureDetector(
                onTap: (){
                  Get.to(BottomNav());
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


