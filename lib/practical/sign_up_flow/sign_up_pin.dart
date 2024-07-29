import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpPin extends StatefulWidget {
  const SignUpPin({super.key});

  @override
  State<SignUpPin> createState() => _SignUpPinState();
}

class _SignUpPinState extends State<SignUpPin> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Create transaction pin', style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700,
              ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Enter the 5-digit PIN you will be using for transactions. Please DO NOT share with anyone else!', style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 18
              ),
                textAlign: TextAlign.start,
              ),
            ),
            Gap(80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 53.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
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
                  height: 53.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
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
                  height: 53.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
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
                  height: 53.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
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
                  height: 53.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
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


          ],
        ),
      ),
    );
  }
}
