import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medilink/core/di/dependency_injection.dart';
import 'package:medilink/core/routing/routes.dart';
import 'package:medilink/features/home/ui/home_screen.dart';
import 'package:medilink/features/login/logic/login_cubit/login_cubit.dart';
import 'package:medilink/features/login/ui/login_screen.dart';
import 'package:medilink/features/onboarding/onboarding_screen.dart';
import 'package:medilink/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:medilink/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
