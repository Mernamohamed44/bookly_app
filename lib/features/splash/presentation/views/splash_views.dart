import 'package:flutter/material.dart';

import 'widgets/splash_views_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashViewsBody(),
    );
  }
}
