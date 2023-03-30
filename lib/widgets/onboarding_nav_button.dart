import 'package:flutter/material.dart';

import '../app_styles.dart';

class OnBoardingNavButton extends StatelessWidget {
  const OnBoardingNavButton({
    Key? key,
    required this.name,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final Color buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: kTextButton.copyWith(color: buttonColor),
        ),
      ),
    );
  }
}
