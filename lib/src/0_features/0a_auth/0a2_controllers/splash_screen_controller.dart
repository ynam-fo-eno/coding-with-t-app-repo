// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:coding_with_t_review/src/0_features/0a_auth/0a1_views/bienvenue.dart';


class SplashScreenController extends GetxController{
  static SplashScreenController get find=> Get.find();
  RxBool isAnimated = false.obs;

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds:500));
    isAnimated.value = true;
    await Future.delayed(Duration(milliseconds: 5000)); 
    Get.to(WelcomePage());   
    
  }
}