import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class ScreenSize {
  static double width = 0;
}

class CustomRowProfile extends StatelessWidget {
  final String image;
  final String title;

  const CustomRowProfile({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: ScreenSize.width * .06,
          height: ScreenSize.width * .06,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: ScreenSize.width * .04,
        ),
        Text(
          title,
          style: normalFont(
              ScreenSize.width * .038, FontWeight.w600, AppColors.black),
        )
      ],
    );
  }
}
