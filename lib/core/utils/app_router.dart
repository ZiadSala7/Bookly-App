import 'package:bookly_app/features/home/presentaion/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String homeViewRouter = '/homeview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
