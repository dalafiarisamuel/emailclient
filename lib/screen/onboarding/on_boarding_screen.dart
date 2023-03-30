import 'dart:async';

import 'package:flutter/material.dart';

import '../../app_styles.dart';
import '../../size_config.dart';
import '../home_screen/home_screen.dart';
import 'on_boarding.dart';
import 'on_boarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  late final Timer _timer;

  AnimatedContainer _dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryColor : kDark40Color,
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      _scrollPageView();
    });
  }

  void _scrollPageView() {
    if (currentPage == OnBoardingData.onBoardingDataList.length - 1) {
      _pageController.animateTo(0,
          duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    } else {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: OnBoardingData.onBoardingDataList.length,
                itemBuilder: (context, index) {
                  OnBoardingData data =
                      OnBoardingData.onBoardingDataList[index];
                  return OnBoardingAnimatedPage(
                    title: data.title,
                    subTitle: data.subtitle,
                    image: data.onBoardingImage,
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(
                          OnBoardingData.onBoardingDataList.length,
                          (index) => _dotIndicator(index),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: _scrollPageView,
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(140, 50),
                        foregroundColor: kParagraphColor,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Skip'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        fixedSize: const Size(140, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: kSecondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Get Started'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
