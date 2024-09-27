import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';

import 'bulkDataMain2.dart';



class BulkDataMainVC extends StatefulWidget {
  const BulkDataMainVC({super.key});

  @override
  State<BulkDataMainVC> createState() => _BulkDataMainVCState();
}

class _BulkDataMainVCState extends State<BulkDataMainVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(BulkData2 ());
                  },

                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back))

              ),
              Gap(250),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/good.png'),
              ),

              //this is a test
              Gap(30),
              Text('Data Successful',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 24
              ),
                textAlign: TextAlign.center,
              ),
              Text('Your data subscription of 5GB has been completed successfully.'
                  ' Please click on the button to your dashboard',style: TextStyle(
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


