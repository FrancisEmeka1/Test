import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../air_time_flow/airtime1.dart';
import '../electricity_flow/electricity_1.dart';

class Dash1 extends StatefulWidget {
  const Dash1({super.key});

  @override
  State<Dash1> createState() => _Dash1State();
}

class _Dash1State extends State<Dash1> {
  bool isVisible=true;

  final pageController = PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
                width: double.infinity,
              ),
              Text('Welcome,  Adepoju Samuel!',style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff00062A),
              ),),
              Gap(10),
              Text('How can we help you today?',style: TextStyle(
                fontWeight: FontWeight.w400,fontSize: 18, color: Color(0xff00062A)
              ),),
              Gap(15),
              Container(
                height: 150.h,
                width: 343.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.black, width: 1.0.w,),
                  image: DecorationImage(image: Image.asset("images/Wallet_balance2.png").image,
                  fit: BoxFit.fill)
        
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
        
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Wallet Balance', style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400,
                          color: Color(0xff00062A),
                      ),
        
                      ),
                      Row(
                        children: [
                          Text(isVisible?'₦20,309.25':"######", style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500
                          ),),
                          Gap(10),
                          IconButton(onPressed:(){
                            setState((){
                          isVisible=!isVisible;
                          });
        
                          }, icon: isVisible? Icon(Icons.visibility_off)
                          :Icon(Icons.visibility))
                        ],
                      ),
                      Gap(1),
                      Row(
                        children: [
                          Text('+₦1,309.25', style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400,
                              color: Color(0xff00062A)
                          ),),
                          Gap(10),
                          Text('Commission balance', style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400,
                              color: Color(0xff00062A)
                          ),),
                        ],
                      ),
                      Gap(5),
                      Row(
                        children: [
                          Text('Top-up Balance', style: TextStyle(
                            decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              fontSize: 14, fontWeight: FontWeight.w500,
                              color: Color(0xff00062A)
                          ),),
                          Gap(150),
                          Text('Send Money', style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              fontSize: 14, fontWeight: FontWeight.w500,
                              color: Color(0xff00062A)
                          ),),
                        ],
                      ),
                        ],
                      )
        
        
                  ),
                ),
          Gap(30),
          Column(
            children: [
              Container(
                height: 113.h,
                width: 343.w,
                child: PageView.builder(
                  controller: pageController,
                    itemCount: adImage.length,
                    onPageChanged: (position){
                        pageController.jumpToPage(position);
                    },
                    itemBuilder: (context,index){
                      return Image.asset(adImage[index]);
                    }),
              ),
              Gap(10),
              SmoothPageIndicator(controller: pageController,
                  count: adImage.length,),
        
            ],
        
        
        
          ),
              Gap(30),
              Text('Services',style: TextStyle(fontWeight: FontWeight.w900,
                  fontSize: 24),
        
              ),
              Gap(20),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(ScreenAirtime_1());
                    },
                    child: Container(
                      height: 109.h,
                      width: 101.w,
                      color: Color(0xffF6ECFF),
                    child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call),
                            Text('Airtime Recharge',style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                              0xff00062A
                            ),
                            ),
                            textAlign: TextAlign.center,
                            )

                          ],
                        )


                      ),
                  ),
                  Gap(15),
                  Container(
                      height: 109.h,
                      width: 101.w,
                      color: Color(0xffE8ECFF),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call),
                          Text('Airtime Recharge',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                              0xff00062A
                          ),
                          ),
                            textAlign: TextAlign.center,
                          )
        
                        ],
                      )
        
        
                  ),
                  Gap(15),
                  Container(
                      height: 109.h,
                      width: 101.w,
                      color: Color(0xffF6ECFF),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call),
                          Text('Airtime Recharge',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                              0xff00062A
                          ),
                          ),
                            textAlign: TextAlign.center,
                          )
        
                        ],
                      )
        
        
                  ),
        
                ],
              ),
              Gap(15),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(ElectricityFlow1());
                    },
                    child: Container(
                        height: 109.h,
                        width: 101.w,
                        color: Color(0xffE6ECFF),
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.electric_bolt),
                            Text('Electricity',style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                                0xff00062A
                            ),
                            ),
                              textAlign: TextAlign.center,
                            )

                          ],
                        )


                    ),
                  ),
                  Gap(15),
                  Container(
                      height: 109.h,
                      width: 101.w,
                      color: Color(0xffF8ECFF),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call),
                          Text('Airtime Recharge',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                              0xff00062A
                          ),
                          ),
                            textAlign: TextAlign.center,
                          )
        
                        ],
                      )
        
        
                  ),
                  Gap(15),
                  Container(
                      height: 109.h,
                      width: 101.w,
                      color: Color(0xffE6ECFF),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call),
                          Text('Airtime Recharge',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w500,color: Color(
                              0xff00062A
                          ),
                          ),
                            textAlign: TextAlign.center,
                          )
        
                        ],
                      )
        
        
                  ),
        
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Text('Recent Transactions',style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: 24, color: Color(0xff00062A),

                  ),
                  ),
                  Gap(70),
                  Text('View All',style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff00062A),
                      fontSize: 16,fontWeight: FontWeight.w500,
                  color: Color(0xff00062A)
                  ),)
                ],
              ),
              Gap(15),
              Container(
                height: 81.h,
                width: 343.w,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5)
                ),
                child: Row(
                  children: [
                    Icon(Icons.call),
                    Gap(90),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Airtime recharge ',style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        Text('7th July, 2023', style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                        ),
                        textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Gap(50),
                    Text('₦2000',style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                      0xff00062A
                    )
                    ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),

              ),
              Gap(15),
              Container(
                height: 81.h,
                width: 343.w,
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5)
                ),
                child: Row(
                  children: [
                    Icon(Icons.call),
                    Gap(90),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Airtime recharge ',style: TextStyle(
                            fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        Text('7th July, 2023', style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                        ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Gap(50),
                    Text('₦2000',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                        0xff00062A
                    )
                    ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),

              ),
              Gap(15),
              Container(
                height: 81.h,
                width: 343.w,
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5)
                ),
                child: Row(
                  children: [
                    Icon(Icons.call),
                    Gap(90),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Airtime recharge ',style: TextStyle(
                            fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        Text('7th July, 2023', style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                        ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Gap(50),
                    Text('₦2000',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                        0xff00062A
                    )
                    ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),

              ),

        
            ]
        ),
             ),
      )
    );
  }
}
List<String>adImage =['images/MTN.png','images/Airtel.png',
  'images/9mobile.png','images/glo.png'];
