// ignore_for_file: prefer_const_constructors_in_immutables, use_super_parameters, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:coding_with_t_review/src/2_constants/colors.dart';
import 'package:coding_with_t_review/src/2_constants/images_strings.dart';
import 'package:coding_with_t_review/src/2_constants/sizes.dart';
import 'package:coding_with_t_review/src/2_constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coding_with_t_review/src/0_features/0a_auth/0a2_controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  
  SplashScreen({Key? key}):super(key: key);

  final SplashScreenController splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            Obx(
              ()=>
              AnimatedPositioned(
                duration: Duration(milliseconds: 1500),
                top: splashController.isAnimated.value ?  40 : -1*defaultSize,
                left: splashController.isAnimated.value  ? 40 : -30,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: primaryColor1,
                  ),
                  child: Image(image: AssetImage(redSplashImage),)
                  ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 2000),
                top: splashController.isAnimated.value  ?  150 : -1*defaultSize,
                left: splashController.isAnimated.value ?   80 : -1*defaultSize,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2000),
                  opacity: splashController.isAnimated.value ? 1:0,
                  child: Column(
                    children: [
                      Text(
                        appName,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        tagline,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
           Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 2500),
                bottom: splashController.isAnimated.value ? 20 : -1 * defaultSize,
                left: splashController.isAnimated.value  ? 100 : -1 * defaultSize,
                child: Container(
                  width: 300,
                  height: 300,
                  color: primaryColor3,
                  child: Image(
                    image: AssetImage(bookStackImage),
                  ),
                ),
              ),
           ),
          ],
        ),
      ),
    );
  }
}