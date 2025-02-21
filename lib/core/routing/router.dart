import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:profile/core/routing/routes.dart';
import 'package:profile/features/auth/presentation/manager/sign_up_view_model.dart';
import 'package:profile/features/auth/presentation/pages/login_view.dart';
import 'package:profile/features/auth/presentation/pages/sign_up_view.dart';
import 'package:profile/features/onboarding/presentation/managers/onboarding_view_model.dart';
import 'package:profile/features/onboarding/presentation/pages/onboarding_view.dart';
import 'package:profile/features/onboarding/presentation/pages/welcome_view.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

final GoRouter router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: Routes.signup,
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return LoginView();
          },
        ),
        GoRoute(
          path: Routes.signup,
          builder: (context, state) => SignUpView(),
        ),
        GoRoute(
          path: Routes.onboarding,
          builder: (context, state) => OnboardingView(
            vm: OnboardingViewModel(
              repo: context.read(),
            ),
          ),
        ),
        GoRoute(
          path: Routes.welcome,
          builder: (context, state) => WelcomeView(),
        ),
      ],
    );
