import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:48.h,
      width: 343.w,
      decoration: BoxDecoration(
          color: Color(0xffADD0FF),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Center(
        child: Text('Continue',style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500,
            color: Color(0xffFFFFFF)
        ),),
      ),
    ) ;
  }
}
