import 'package:billspaymentapp/practical/wallet/walletPhase2.dart';
import 'package:billspaymentapp/practical/wallet/walletPhase3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../screens/bottomNav.dart';
import '../../screens/bottomsheet/walletBottomSheet.dart';
import '../air_time_flow/airtime1.dart';
import '../cable_flow/cable_flow1.dart';
import '../data_flow/data_flow_1.dart';

class Walletphase1 extends StatefulWidget {
  const Walletphase1({super.key});

  @override
  State<Walletphase1> createState() => _Walletphase1State();
}

class _Walletphase1State extends State<Walletphase1> {
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
                        height: 60.h,
                        width: double.infinity,
                      ),
                      GestureDetector(
                          onTap: (){
                            Get.to(BottomNav());
                          },

                          child: Icon(Icons.arrow_back_rounded)),
                      Gap(40),
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
                                const Text('Wallet Balance', style: TextStyle(
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
                                const Row(
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
                                Text('Wema Bank: 1234567890',style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w400

                                )
                                ),
                                Gap(5),
                              ],
                            )
                        ),
                      ),
                      Gap(15),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.0),
                            child: GestureDetector(
                              onTap: (){
                                Get.to( WalletPhase2());
                              },
                              child: Text('Top-up Balance', style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.black,
                                  fontSize: 14, fontWeight: FontWeight.w500,
                                  color: Color(0xff00062A)
                              ),),
                            ),
                          ),
                          Gap(130),
                          GestureDetector(
                            onTap: (){
                              Get.to(WalletPhase3());
                            },

                            child: Text('Send Money', style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w500,
                                color: Color(0xff00062A)
                            ),),
                          ),
                        ],
                      ),
                      Gap(15),
                      Container(
                        height: 150.h,
                        width: 343.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: Image.asset("images/wallet_png").image,
                                fit: BoxFit.fill),
                      ),
                      ),
                      Gap(15),
                      Row(
                        children: [
                          Text('History',style: TextStyle(fontWeight: FontWeight.w700,
                            fontSize: 24, color: Color(0xff00062A),

                          ),
                          ),

                        ],
                      ),
                      Gap(15),
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet( builder:(context){
                            return Container(
                                height: 300.h,
                                child: WalletBottomSheet()
                            );

                          },
                              context: context);
                        },
                        child: Container(
                          height: 81.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                              color: Color(0xffF5F5F5)
                          ),
                          child:  const Row(
                            children: [
                              Icon(Icons.wallet),
                              Gap(20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Transfer from bank ',style: TextStyle(
                                          fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                                      ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Gap(70),
                                      Text('₦2000',style: TextStyle(
                                          fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                                          0xff00062A
                                      )
                                      ),
                                        textAlign: TextAlign.right,
                                      )
                                    ],
                                  ),
                                  Gap(5),
                                  Row(
                                    children: [
                                      Text('7th July, 2023', style: TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                                      ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Gap(100),
                                      Text('Successful',style: TextStyle(
                                        fontWeight: FontWeight.w400,fontSize: 14
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                              Gap(70),

                            ],
                          ),

                        ),
                      ),
                      Gap(15),
                      Container(
                        height: 81.h,
                        width: 343.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5)
                        ),
                        child:  Row(
                          children: [
                            Icon(Icons.wallet),
                            Gap(20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Transfer from bank ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(70),
                                    Text('₦2000',style: TextStyle(
                                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                                        0xff00062A
                                    )
                                    ),
                                      textAlign: TextAlign.right,
                                    )
                                  ],
                                ),
                                Gap(5),
                                Row(
                                  children: [
                                    Text('7th July, 2023', style: TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(100),
                                    Text('Successful',style: TextStyle(
                                        fontWeight: FontWeight.w400,fontSize: 14
                                    ),)
                                  ],
                                )
                              ],
                            ),
                            Gap(70),

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
                        child:  Row(
                          children: [
                            Icon(Icons.wallet),
                            Gap(20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Transfer from bank ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(70),
                                    Text('₦2000',style: TextStyle(
                                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                                        0xff00062A
                                    )
                                    ),
                                      textAlign: TextAlign.right,
                                    )
                                  ],
                                ),
                                Gap(5),
                                Row(
                                  children: [
                                    Text('7th July, 2023', style: TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(100),
                                    Text('Successful',style: TextStyle(
                                        fontWeight: FontWeight.w400,fontSize: 14
                                    ),)
                                  ],
                                )
                              ],
                            ),
                            Gap(70),

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
                        child:  Row(
                          children: [
                            Icon(Icons.wallet),
                            Gap(20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Transfer from bank ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff00062A)
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(70),
                                    Text('₦2000',style: TextStyle(
                                        fontWeight: FontWeight.w500,fontSize: 14, color: Color(
                                        0xff00062A
                                    )
                                    ),
                                      textAlign: TextAlign.right,
                                    )
                                  ],
                                ),
                                Gap(5),
                                Row(
                                  children: [
                                    Text('7th July, 2023', style: TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff00062A),
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(100),
                                    Text('Successful',style: TextStyle(
                                        fontWeight: FontWeight.w400,fontSize: 14
                                    ),)
                                  ],
                                )
                              ],
                            ),
                            Gap(70),

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

