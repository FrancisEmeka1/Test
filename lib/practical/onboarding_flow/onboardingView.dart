import 'package:billspaymentapp/practical/onboarding_flow/onboardingItem.dart';
import 'package:billspaymentapp/practical/sign_up_flow/sign_up.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_Screens extends StatefulWidget {
  const Onboarding_Screens({super.key});

  @override
  State<Onboarding_Screens> createState() => _Onboarding_ScreensState();
}

class _Onboarding_ScreensState extends State<Onboarding_Screens> {
  final controller=Onboarding_Item();
  final pageController = PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          SizedBox(
            height:700.h,
            child: PageView.builder(
                itemCount: controller.Item.length,
                controller: pageController,
                onPageChanged: (position){
                  setState(() {
                    currentIndex=position;
                  });
                },
                itemBuilder: (context,index){
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(controller.Item[index].Image),
                        Gap(15),
                        Text(controller.Item[index].titlle,
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        Gap(15),
                        Text(controller.Item[index].Description,
                            style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal)),
                      ],
                    ),
                  );

            }


            ),
          ),
          GestureDetector(
            onTap: (){

            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: (){
                            if(pageController!=0) {
                              pageController.nextPage(duration: Duration(seconds: 1),
                                  curve: Curves.easeIn);
                            }

                          },
                          child:SmoothPageIndicator(controller: pageController,
                            count: 3,
                            effect: const ExpandingDotsEffect(
                                activeDotColor: Colors.blue,
                                dotColor: Colors.grey,
                                dotWidth: 20

                            ),)
                      ),
                      Gap(20),
                      GestureDetector(
                        onTap: (){
                          if (currentIndex!=2){
                            pageController.nextPage(duration: Duration(seconds: 1),
                                curve: Curves.easeIn);
                          }else if(currentIndex==2){
                            Get.to(SignUp1());
                          }


                        },
                        child: AnimatedContainer(
                          height: 60.h,
                          width:currentIndex==2?200.w:50.w,
                          padding: currentIndex==2? EdgeInsets.symmetric(horizontal: 20.w): EdgeInsets.zero,

                          decoration: BoxDecoration(
                            shape: currentIndex==2?BoxShape.rectangle:BoxShape.circle,
                            borderRadius: currentIndex!=2?null:BorderRadius.circular(25),
                            color: Colors.blue,),
                          duration: const Duration(seconds: 1),
                          child:  Center(
                            child: Row(
                              children: [
                                Visibility(
                                  visible:currentIndex==2,
                                  child: const Center(
                                    child: Text(
                                      'Get Started',
                                      textAlign: TextAlign.center, style: TextStyle(
                                      color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal
                                    ),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                 const Center(child: Icon(Icons.arrow_forward,color: Colors.white,))

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],

            ),
          ),
        ],
      ),

    );
  }
}
