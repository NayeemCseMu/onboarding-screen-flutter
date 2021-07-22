import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/module/dashboard/controller/onboarding_controller.dart';
import 'package:onboarding_screen/module/dashboard/model/onboarding_model.dart';
import 'package:onboarding_screen/module/dashboard/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingController _controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Text("Self Develop Motivation",
              style: Get.textTheme.headline6!.copyWith(color: Colors.brown)),
          Expanded(
            flex: 4,
            child: PageView.builder(
                itemCount: onBoardingInfo.length,
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPage,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            onBoardingInfo[index].image!,
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                onBoardingInfo[index].title!.capitalize!,
                                style: Get.textTheme.headline5!
                                    .copyWith(color: Colors.deepPurple),
                              ),
                              SizedBox(height: 20),
                              Text(
                                onBoardingInfo[index].description!,
                                style: Get.textTheme.subtitle1,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Expanded(
            child: Obx(
              () => _indicator(_controller),
            ),
          )
        ],
      ),
    );
  }

  Widget _indicator(OnBoardingController _controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingInfo.length,
            (index) => AnimatedContainer(
              duration: 500.milliseconds,
              curve: Curves.ease,
              height: _controller.selectedPage.value == index ? 10 : 6,
              width: _controller.selectedPage.value == index ? 10 : 6,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _controller.selectedPage.value == index
                    ? Colors.blue
                    : Colors.grey,
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              if (_controller.isLastPage) {
                Get.to(HomScreen());
              } else {
                _controller.nextAction();
              }
            },
            icon: Icon(
              _controller.isLastPage ? Icons.done : Icons.arrow_forward,
              size: 30,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
