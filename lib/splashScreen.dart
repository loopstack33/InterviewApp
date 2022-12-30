import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_app/enums/colors_const.dart';
import 'package:interview_app/utils/appRoutes.dart';
import 'package:interview_app/views/intro/introScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(milliseconds: 1500),
        () => AppRoutes.pushAndRemoveUntil(
            context, PageTransitionType.fade, const IntroScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashbg,
      body: Center(
        child: Lottie.asset("assets/lottieFiles/splash.json",
            width: 300.w, height: 400.h),
      ),
    );
  }
}
