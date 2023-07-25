import 'package:bekam/core/bloc_observer/bloc_observer.dart';
import 'package:bekam/core/firebase_options/firebase_options.dart';
import 'package:bekam/core/theme/dark_theme.dart';
import 'package:bekam/core/theme/light_theme.dart';
import 'package:bekam/data/cubit/dices_cubit.dart';
import 'package:bekam/data/cubit/forget_pass_cubit.dart';
import 'package:bekam/data/cubit/logout_cubit.dart';
import 'package:bekam/data/cubit/on_boarding_cubit.dart';
import 'package:bekam/data/cubit/registeration_type_dart_cubit.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';
import 'package:bekam/presentation/screens/onboarding/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterationTypeDartCubit>(
            create: (context) => RegisterationTypeDartCubit()),
        BlocProvider<LogoutCubit>(
          create: (context) => LogoutCubit(),
        ),
        BlocProvider<DicesCubit>(
          create: (context) => DicesCubit(),
        ),
        BlocProvider<ForgetPassCubit>(
          create: (context) => ForgetPassCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<OnBoardingCubit>(
          create: (context) => OnBoardingCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            themeMode: !ThemeCubit.get(context).theme
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const OnBoardingScreen(),
          );
        },
      ),
    );
  }
}
