import 'package:go_router/go_router.dart';
import 'package:river_app_ifab/presentation/screens/screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DomusScreen(),
    )
  ]
);