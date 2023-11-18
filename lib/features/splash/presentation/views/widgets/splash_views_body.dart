import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewsBody extends StatefulWidget {
  const SplashViewsBody({super.key});

  @override
  State<SplashViewsBody> createState() => _SplashViewsBodyState();
}

class _SplashViewsBodyState extends State<SplashViewsBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingText();
    moveToHome();
    super.initState();
  }
  @override
  void dispose() {
    animationController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        const Image(image: AssetImage(AssetsData.logo)),
        const SizedBox(height: 4,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  void initSlidingText(){
    animationController=AnimationController(vsync:this,duration: const Duration(seconds: 1) );
    slidingAnimation=Tween<Offset>(
        begin: const Offset(0,12),
        end:  Offset.zero
    ).animate(animationController);
    animationController.forward();
  }
  void moveToHome(){
    Future.delayed(const Duration(seconds: 3),() => GoRouter.of(context).push(AppRoutes.kHomeScreen),);

  }
}
