import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome Home",
          style: Get.textTheme.headline6,
        ),
      ),
    );
  }
}
