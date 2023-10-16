import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/buttons/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/infinite_scroll/infinite_scroll_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls/ui_controls_screen.dart';

import '../../presentation/screens/snackbar/snackbar_screen.dart';

/// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      builder: (context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      path: '/progress',
      builder: (context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, GoRouterState state) {
        return const SnackbarScreen();
      },
    ),
    GoRoute(
      path: '/animated',
      builder: (context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, GoRouterState state) {
        return const UiControlsScreen();
      },
    ),
    GoRoute(
      path: '/tutorial',
      builder: (context, GoRouterState state) {
        return const AppTutorialScreen();
      },
    ),
    GoRoute(
      path: '/infinite',
      builder: (context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
    GoRoute(
      path: '/counter',
      builder: (context, GoRouterState state) {
        return const CounterScreen();
      },
    ),
  ],
);
