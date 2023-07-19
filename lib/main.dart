import 'package:bekam/core/theme/dark_theme.dart';
import 'package:bekam/core/theme/light_theme.dart';
import 'package:bekam/data/cubit/on_boarding_cubit.dart';
import 'package:bekam/presentation/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingCubit>(
          create: (context)=> OnBoardingCubit(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          home: const OnBoardingScreen(),
        ),
    );
  }
}
