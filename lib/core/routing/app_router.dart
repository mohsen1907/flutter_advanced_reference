import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/core/di/dependency_injection.dart';
import 'package:flutter_advanced_reference/core/routing/routes.dart';
import 'package:flutter_advanced_reference/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) =>  const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
            create: (BuildContext context) => getIt<LoginCubit>(),
            child: const LoginScreen()));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}