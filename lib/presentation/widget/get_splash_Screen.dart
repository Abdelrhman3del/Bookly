import 'package:bookly/core/utils/app_constant.dart';
import 'package:bookly/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetSplashScreen extends StatefulWidget {
  const GetSplashScreen({Key? key}) : super(key: key);

  @override
  State<GetSplashScreen> createState() => _GetSplashScreenState();
}

class _GetSplashScreenState extends State<GetSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    intAnimation();
    navigatorToHome();
  }

  void navigatorToHome() {
     Future.delayed(const Duration(seconds: 5), () {
      Get.to(() =>  HomeScreen(),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 4));
    });
  }

  void intAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<Offset>(begin: (const Offset(0, 8)), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppConstant.logoImage),
        const SizedBox(
          height: 7,
        ),
        AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) => SlideTransition(
                  position: animation,
                  child: const Text(
                    'Read free books',
                    textAlign: TextAlign.center,
                  ),
                )),
      ],
    );
  }
}
