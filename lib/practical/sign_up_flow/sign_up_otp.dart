import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpOTP extends StatefulWidget {
  const SignUpOTP({super.key});

  @override
  State<SignUpOTP> createState() => _SignUpOTPState();
}

class _SignUpOTPState extends State<SignUpOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.h,
              width: double.infinity,
            ),
            Text('Phone number Verification', style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700,
            ),
              textAlign: TextAlign.start,
            ),
            Text('Enter the OTP sent to your phone number', style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 18
            ),
            textAlign: TextAlign.start,
            ),
            Gap(80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 48.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                  ),
                )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 48.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 48.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 48.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                  ),
                ),

              ],
            ),
            Gap(35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t get the code?',style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w400
                ),
                ),
                Text(' Resend code', style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 18, color: Colors.blue
                ),)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
