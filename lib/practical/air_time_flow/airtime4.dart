import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../dashboard/dash_1.dart';
import 'airtime2.dart';


class Airtime_4 extends StatefulWidget {
  const Airtime_4({super.key});

  @override
  State<Airtime_4> createState() => _Airtime_4State();
}

class _Airtime_4State extends State<Airtime_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(Airtime_2 ());
              },

                child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back))

            ),
            Gap(15),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/good.png'),
            ),

            //this is a test
            Gap(30),
            Text('Recharge Successful',style: TextStyle(
              fontWeight: FontWeight.w700,fontSize: 24
            ),
            textAlign: TextAlign.center,
            ),
            Text('Your airtime recharge of 500 naira has been completed. '
                'Please click on the button to your dashboard',style: TextStyle(
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
    );
  }
}


