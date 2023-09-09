import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:gogo_password/view/login_info_content_page.dart';
import 'package:gogo_password/view/home_page.dart';

const String loginContent = 'loginContent';
const String routerLoginContent = '/$loginContent';

final GoRouter myRouter = GoRouter(
  errorBuilder: (context, state) => const Center(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: loginContent,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginInfoContentPage(info: null);
          },
        ),
      ],
    ),
  ],
);
