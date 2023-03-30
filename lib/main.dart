import 'package:emailclient/app_styles.dart';
import 'package:emailclient/screen/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MpApp());
}

class MpApp extends StatelessWidget {
  const MpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kWhiteColor,
        body: OnBoardingScreen(),
      ),
    );
  }
}
