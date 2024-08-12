import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../air_time_flow/airtime2.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key,
  required Text,
    required TextStyle style,
  });

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
                  Get.to(Airtime_2());
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
    );

  }
}
