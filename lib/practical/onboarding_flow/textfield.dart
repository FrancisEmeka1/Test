import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFied extends StatelessWidget {
  String labelText ='Username/ Email address';
   CustomTextFied({
    super.key,
    required InputDecoration decoration,
    required TextStyle style,
  required  labelText,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 343.w,
      child: TextField(
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,
              color: Colors.black
          ),
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
    );

  }
}
