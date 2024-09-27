import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'bulkData2.dart';
import 'bulkData_VC.dart';



class Pin_code_bulkData extends StatefulWidget {
  const Pin_code_bulkData({super.key});

  @override
  State<Pin_code_bulkData> createState() => _Pin_code_bulkDataState();
}

class _Pin_code_bulkDataState extends State<Pin_code_bulkData> {
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
                  Get.to(BulkRicharge2());
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
                if(value.length==5){
                  Get.to(bulkDataVC());

                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 50.h,
                  fieldWidth: 50.w,
                  activeFillColor: Colors.grey,
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
