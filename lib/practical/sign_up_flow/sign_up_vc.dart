import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../screens/bottomNav.dart';

class SignUpVC extends StatefulWidget {
  const SignUpVC({super.key});

  @override
  State<SignUpVC> createState() => _SignUpVCState();
}

class _SignUpVCState extends State<SignUpVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/check.png') ,
              ),
            Gap(30),
            Text('Verification Completed', style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700,
            ),
              textAlign: TextAlign.start,
            ),
            Gap(15),
        Text('Your verification has been completed successfully. Please click on the button to your dashboard', style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400,
        ),
          textAlign: TextAlign.center,
        ),
            Gap(35),
            GestureDetector(
              onTap: (){
                Get.to(BottomNav());
              },
              child: Text('Take Me to Dashboard', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400,
                color: Colors.blue
              ),
                textAlign: TextAlign.center,
              ),
            )

          ],
        ),
      ),
    );
  }
}
