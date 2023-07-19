import 'package:flutter/material.dart';

class OnboardingModel {
  final String title;
  final String subTitle;
  final String counterText;
  final String imagePath;
  final Color backGroundColor;

  OnboardingModel({
    required this.title,
    required this.subTitle,
    required this.counterText,
    required this.imagePath,
    required this.backGroundColor,
  });
}
