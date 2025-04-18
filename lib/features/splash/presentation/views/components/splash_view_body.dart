import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/views/components/splash_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation1;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation1 = Tween<Offset>(
      begin: (Offset(0, 1.5)),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    slidingAnimation2 = Tween<Offset>(
      begin: (Offset(0, -4.5)),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    goToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  goToHomeScreen() {
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRouter.homeView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: double.infinity),
        SlideTransition(
          position: slidingAnimation1,
          child: SplashLogo()),
        SlideTransition(
          position: slidingAnimation2,
          child: Text("Read Free Books" , style: AppStyles.style14,),
        ),
      ],
    );
  }
}
