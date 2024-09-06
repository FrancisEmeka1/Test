import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'cable_flow1.dart';
import 'cable_flow_vc.dart';

class CableFlowPin extends StatefulWidget {
  const CableFlowPin({super.key});

  @override
  State<CableFlowPin> createState() => _CableFlowPinState();
}

class _CableFlowPinState extends State<CableFlowPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(Cable_Flow1());
              },



                child: Icon(Icons.arrow_back)),
            Gap(30),
            Text('Enter pin',style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.w700),),
            Gap(30),
            Text('Enter your transaction Pin to continue',
              style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w400),),
            Gap(40),
            PinCodeTextField(
                appContext: context,
                length: 5,
                onChanged:(value){
              if(value.length==5){
                Get.to(CableFlowVC());
              }
                },
                pinTheme:PinTheme(
                  shape: PinCodeFieldShape.circle,
                    fieldHeight: 50.h,
                    fieldWidth: 50.w,
                    activeFillColor: Colors.grey,
                    inactiveColor: Colors.grey,
                    selectedColor: Colors.grey,
                    selectedFillColor: Colors.grey

                ),
              keyboardType: TextInputType.number,
              obscureText: true,

            ),

          ],
        ),
      ),
    );
  }
}
