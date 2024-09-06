import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'electricity_1.dart';
import 'electricity_flow3.dart';

class Electricity_Pin extends StatefulWidget {
  const Electricity_Pin({super.key});

  @override
  State<Electricity_Pin> createState() => _Electricity_PinState();
}

class _Electricity_PinState extends State<Electricity_Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            GestureDetector(
                onTap: (){
                  Get.to(ElectricityFlow1());
                },
                child: Icon(Icons.arrow_back)

            ),
            Gap(20),
            Text('Enter pin',style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 24
            ),
            ),
            Gap(15),
            Text('Enter your transaction Pin to continue',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400
            ),
            ),
            Gap(40),
            // Padding(
            // padding: const EdgeInsets.all(.0),
            PinCodeTextField(
              appContext: context,
              length: 5, // Number of digits
              onChanged: (value) {
                if(value.length==5){
                  Get.to(Electricity_Verification());
                }
                // Handle changes
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                fieldHeight: 50.h,
                fieldWidth: 50.w,
                activeColor: Colors.grey,
                inactiveColor: Colors.grey,
                selectedFillColor: Colors.grey,
                selectedColor: Colors.grey
              ),
              keyboardType: TextInputType.number,
              obscureText: true, // Hide the input text for security
            ),
          ],
        ),
      ),
    );;
  }
}
