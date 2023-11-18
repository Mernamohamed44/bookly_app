import 'package:bookly_app/features/home/presenation/views/book_details_views.dart';
import 'package:bookly_app/features/home/presenation/views/home_views.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_views.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeScreen = '/HomeScreen';
  static const kBookDetailsScreen = '/BookDetailsScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeViews(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => const BookDetailsViews(),
      ),
    ],
  );
}
