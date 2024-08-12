import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ElectricBottomSheet extends StatelessWidget {
  const ElectricBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width,
      child: Column(
        children: [
          Text("I am a bottomsheet")
        ],
      ),
    );
  }
}
