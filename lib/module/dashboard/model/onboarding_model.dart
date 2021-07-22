import 'package:flutter/material.dart';
import 'package:onboarding_screen/constants/app_text.dart';
import 'package:onboarding_screen/constants/assets_path.dart';

class OnBoarding {
  String? title;
  String? description;
  String? image;
  Color? color;

  OnBoarding({this.title, this.description, this.image, this.color});
}

List<OnBoarding> onBoardingInfo = [
  OnBoarding(
    title: 'Think about new ideas!',
    description: loremText,
    image: ideaImg,
    color: Colors.amber,
  ),
  OnBoarding(
    title: 'Read books and gain knowledge!',
    description: loremText,
    image: readingImg,
    color: Colors.deepOrange,
  ),
  OnBoarding(
    title: 'Make team and do best!',
    description: loremText,
    image: teamworkImg,
    color: Colors.tealAccent,
  ),
];
