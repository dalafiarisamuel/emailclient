import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_styles.dart';
import '../../size_config.dart';

class OnBoardingAnimatedPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingAnimatedPage({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeVertical = SizeConfig.blockSizeVertical!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: sizeVertical * 1,
        ),
        SizedBox(
          height: sizeVertical * 40,
          child: SvgPicture.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: sizeVertical * 2,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: kTitleOnboarding,
            ),
          ),
        ),
        SizedBox(
          height: sizeVertical * 1,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              textAlign: TextAlign.center,
              subTitle,
              style: kSubtitleOnboarding,
              maxLines: 3,
            ),
          ),
        ),
        SizedBox(
          height: sizeVertical * 5,
        ),
      ],
    );
  }
}
