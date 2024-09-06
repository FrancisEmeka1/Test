import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/bottomNav.dart';
import '../../screens/bottomsheet/transactionBottomSheet.dart';

class Transactional_History1 extends StatefulWidget {
  const Transactional_History1({super.key});

  @override
  State<Transactional_History1> createState() => _Transactional_History1State();
}

class _Transactional_History1State extends State<Transactional_History1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.to(BottomNav());
                      },
        
                      child: Icon(Icons.arrow_back)),
                  Gap(5),
                  Text('transaction history',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text('Transaction History',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 14
                    ),),
                    Gap(130),
                    Text('Statistics',style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
              Gap(10),
              Container(
                height: 1.h,
                width: Get.width,
                color: Colors.black,
              ),
              Gap(20),
              Row(
                children: [
                  Container(
                    height: 20.h,
                    width:105.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Center(
                        child: Row(
                          children: [
                            Text('This month',style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w400
                            ),),
                            Gap(5),
                             Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(10),
                  Container(
                    height: 20.h,
                    width:105.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Center(
                        child: Row(
                          children: [
                            Text('This month',style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w400
                            ),),
                            Gap(5),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(10),
                  Container(
                    height: 20.h,
                    width:105.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Center(
                        child: Row(
                          children: [
                            Text('This month',style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w400
                            ),),
                            Gap(5),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet( builder:(context){
                    return Container(
                        height: 300.h,
                        child: TransactionBottomSheet()
                    );
        
                  },
                      context: context);
                },
        
                child: Container(
                  height: 100.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Color(0xffF6ECFF),
                    borderRadius: BorderRadius.circular(10)
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0,
                          horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.add_ic_call_outlined,size: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:15.0,),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Airtime recharge',style: TextStyle(
                                          fontWeight: FontWeight.w700,fontSize: 16
                                        ),
                                        ),
                                      ],
                                    ),
                                    Gap(100),
                                    Text('-₦2000',style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w500
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(15),
                              Row(
                                children: [
                                  Gap(15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text('7th July, 2023',style: TextStyle(
                                                fontWeight: FontWeight.w400,fontSize: 14
                                              ),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Gap(135),
                                  Text('Successful',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400
        
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              Gap(10),
              Container(
                height: 100.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffE8ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,
                      horizontal: 5),
                  child: Row(
                    children: [
                      Icon(Icons.tv,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Cable Subscription',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),
                                    ),
                                  ],
                                ),
                                Gap(100),
                                Text('₦2000',style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Gap(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('7th July, 2023',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(135),
                              Text('Pending',style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w400
        
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Container(
                height: 100.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffE8ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,
                      horizontal: 5),
                  child: Row(
                    children: [
                      Icon(Icons.wifi,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Data Subscription',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),
                                    ),
                                  ],
                                ),
                                Gap(100),
                                Text('₦2000',style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Gap(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('7th July, 2023',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(135),
                              Text('failed',style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w400
        
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Container(
                height: 100.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffF6ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,
                      horizontal: 5),
                  child: Row(
                    children: [
                      Icon(Icons.add_ic_call_outlined,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Airtime recharge ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),
                                    ),
                                  ],
                                ),
                                Gap(100),
                                Text('₦2000',style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Gap(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('7th July, 2023',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(135),
                              Text('failed',style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w400
        
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Container(
                height: 100.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffF6ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,
                      horizontal: 5),
                  child: Row(
                    children: [
                      Icon(Icons.add_ic_call_outlined,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Airtime recharge ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),
                                    ),
                                  ],
                                ),
                                Gap(100),
                                Text('₦2000',style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Gap(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('7th July, 2023',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(135),
                              Text('failed',style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w400
        
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Container(
                height: 100.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xffF6ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,
                      horizontal: 5),
                  child: Row(
                    children: [
                      Icon(Icons.add_ic_call_outlined,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Airtime recharge ',style: TextStyle(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),
                                    ),
                                  ],
                                ),
                                Gap(100),
                                Text('₦2000',style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Gap(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('7th July, 2023',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(135),
                              Text('failed',style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w400
        
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
