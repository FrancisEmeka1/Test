import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageControllerOne = PageController();
  final pageControllerTwo = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
             height: 515.h,
            // width: double.infinity,
            // color: Colors.blue,
            // padding: EdgeInsets.zero,
            // padding: EdgeInsets.only(bottom: 150),
            child: PageView(
              controller: pageControllerOne,
              onPageChanged: (position){
                PageNavigation(pageControllerTwo,position);
              },
              children: [
                SizedBox(
                  height: 515.h,
                  width: double.infinity,
                  child: Image.asset('images/welcomeScreen1.png',fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: 515.h,
                  width: double.infinity ,
                 child: Image.asset('images/welcomeScreen2.png',fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: 515.h,
                  width: double.infinity,
                  child: Image.asset('images/welcome3.png',fit: BoxFit.fill,),
                ),
              ],

            ),
          ),
          const Gap(12),
          SizedBox(
            height: 250.h,
            width: double.infinity,
            child: PageView(
              controller: pageControllerTwo,
              onPageChanged: (position){
                  PageNavigation(pageControllerOne,position);
              },
              children: const [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('Easy Data Purchase'),
                      Text('This is testtttttttt')
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('Easy Data Purchase'),
                      Text('This is testtttttttt')
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('Easy Data Purchase'),
                      Text('This is testtttttttt')

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
     
    );
  }

  void PageNavigation(PageController pageController,int position) {
     setState(() {
       pageController.animateToPage(position,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn);
    });
  }
}

class OnboardingData{
  String image;
  List<String> titleDescriptions;
  OnboardingData({required this.image,required this.titleDescriptions});
}

class OnboardingDesign extends StatelessWidget {
   OnboardingData data;
   OnboardingDesign({required this.data,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 515.h,
            width: double.infinity,
            child: Image.asset(data.image,fit: BoxFit.fill,),
          ),
          Gap(12),
          Text(data.titleDescriptions[0]),
          Text(data.titleDescriptions[1]),
        ],
      ),
    );
  }
}

class Secob extends StatefulWidget {
  const Secob({super.key});

  @override
  State<Secob> createState() => _SecobState();
}

class _SecobState extends State<Secob> {
  final pageControllerOne = PageController();

 final rise=12;
  final List<OnboardingData> _list =[
    OnboardingData(image: "images/welcomeScreen1.png", titleDescriptions: [
      "The FIrst Guy","OMOOOOOOOOOO"
    ]),
    OnboardingData(image: "images/welcomeScreen2.png", titleDescriptions: [
      "The Second Guy","OMOOOOOOOOOO X2"
    ]),
    OnboardingData(image: "images/welcomeScreen3.png", titleDescriptions: [
      "The Third Guy","OMOOOOOOOOOO X3"
    ]),
  ];
  int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 700.h,
            child: PageView(
              controller: pageControllerOne,
              onPageChanged: (position){
                setState(() {
                  currentIndex=position;
                });
              },
              children: [
                OnboardingDesign(data: _list[0],),
                OnboardingDesign(data: _list[1],),
                OnboardingDesign(data: _list[2],),
              ],
            ),
          ),
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: Row(
              children: [
                DotsIndicator(dotsCount: 3,
                position: currentIndex,
                decorator: DotsDecorator(
                  size: Size.square(6),

                  activeSize: const Size(15,6),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r))
                  
                ),
                ),
                GestureDetector(
                  onTap: (){
                    if(currentIndex!=2){
                      pageControllerOne.nextPage(duration: Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }
                  }, child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40.h,
                    width: currentIndex==2?40.w:80.w,
                    decoration: BoxDecoration(
                      shape: currentIndex==2?BoxShape.rectangle:BoxShape.circle,
                      color: Colors.blue
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
