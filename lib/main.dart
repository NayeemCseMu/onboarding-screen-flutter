import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/core/onboarding/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OnBoarding',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Baloo2'),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
