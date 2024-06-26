// 🐦 Flutter imports:
import 'package:bekam/data/cubit/logout_cubit.dart';
import 'package:bekam/data/cubit/user_verification_helper_cubit.dart';
import 'package:bekam/presentation/screens/search/search_page.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/bloc_observer/bloc_observer.dart';
import 'package:bekam/core/firebase_options/firebase_options.dart';
import 'package:bekam/core/theme/dark_theme.dart';
import 'package:bekam/core/theme/light_theme.dart';
import 'package:bekam/data/cubit/forget_pass_cubit.dart';
import 'package:bekam/data/cubit/registeration_type_dart_cubit.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';

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
        BlocProvider<UserVerificationHelperCubit>(
          create: (context) => UserVerificationHelperCubit(),
        ),
        BlocProvider<ForgetPassCubit>(
          create: (context) => ForgetPassCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<UserVerificationHelperCubit>(
          create: (context) => UserVerificationHelperCubit(),
        ),

        // BlocProvider<ProductSearchCubit>(
        //   create: (context) => getIt<ProductSearchCubit>()
        // ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            themeMode: ThemeCubit.get(context).theme
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const SearchPage(),
          );
        },
      ),
    );
  }
}
