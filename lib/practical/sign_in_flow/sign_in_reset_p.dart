import 'package:billspaymentapp/practical/onboarding_flow/container.dart';
import 'package:billspaymentapp/practical/onboarding_flow/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Reset_P extends StatefulWidget {
  const Reset_P({super.key});

  @override
  State<Reset_P> createState() => _Reset_PState();
}

class _Reset_PState extends State<Reset_P> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                width: double.infinity,
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  alignment: Alignment.topLeft,
                    height: 40.h,
                    width: double.infinity,
                    child: Icon(Icons.arrow_back)),
              ),
             Gap(30),
             Text('Reset password',style: TextStyle(
               fontSize: 24, fontWeight: FontWeight.w700,color: Color(0xff00062A)
             ),),
              Gap(15),
              Text('Please provide the email address associated with your account. A new password will be sent to this email.'
                  ' Kindly login to your account with this password.',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,
                  color: Color(0xff00062A)),
              ),
              Gap(20),
              CustomTextFied(decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              )
              , style: TextStyle(
                    fontSize: 18,
                  ), labelText:'Email',),
              Gap(20),
              CustomContainer()
            ],
          ),
        ),

    );
  }
}
