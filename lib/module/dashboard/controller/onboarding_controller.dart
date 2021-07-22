import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/module/dashboard/model/onboarding_model.dart';

class OnBoardingController extends GetxController {
  var selectedPage = 0.obs;
  bool get isLastPage => selectedPage.value == onBoardingInfo.length - 1;
  var pageController = PageController();

  nextAction() =>
      pageController.nextPage(duration: 500.milliseconds, curve: Curves.ease);
}
