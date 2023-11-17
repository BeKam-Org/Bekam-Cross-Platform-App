// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// 🌎 Project imports:
import 'package:bekam/core/bloc_observer/bloc_observer.dart';
import 'package:bekam/core/helper/custom_scroll_behaviour.dart';
import 'package:bekam/core/localization/app_localization_delegate.dart';
import 'package:bekam/core/router/auto_router.dart';
import 'package:bekam/firebase_options.dart';

// hello from the test branch to restaurant branch
/// The main entry point for the Flutter application.
void main() async {
  /// Sets the global observer for BLoC changes using MyBlocObserver.
  Bloc.observer = MyBlocObserver();

  /// Ensures that Flutter bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  /// Initializes Firebase services.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// Runs the application by creating an instance of MyApp.
  runApp(const MyApp());
}

/// The root widget for the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Builds the root of the application widget tree.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      /// Title displayed in the operating system's task switcher.
      title: 'select.cheap',

      /// Controls the display of a banner at the top right of the app's UI in debug mode.
      debugShowCheckedModeBanner: false,

      /// Configures the app's localization support.
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /// Parses route information to route data.
      routeInformationParser: appRouter.defaultRouteParser(),

      /// Customizes scrolling behavior using CustomScrollBehaviour.
      scrollBehavior: CustomScrollBehaviour(),

      /// Delegates the routing handling to the appRouter.
      routerDelegate: appRouter.delegate(),

      /// Specifies the supported locales for the app.
      supportedLocales: const [
        Locale(
          'en',
          'ar',
        ),
      ],
    );
  }
}

/*
|lib 
| |//!-- Core 
| |        |//?-- helper (responsive helper, string formatter, .... etc)
| |        |//?-- bloc_observer 
| |        |//?-- router (app pages and routes)
| |        |//?-- theme [common theme - light theme - dark theme]
| |        |//?-- utils [values lib{borders,colors,images,sizes,....etc}]
| |        |//?-- Networking [DIO, try to add common web_services{retrofit}] 
| |        |//?-- di (Dependency Injection) {getIt}
| |        |_//?- localization
| |                 |//@-- language1_name[EX: en_us]
| |                 |       |_//* language1_name_translations.dart
| |                 |//@-- language2_name[EX: ar_eg]
| |                 |       |_//* language2_name_translations.dart
| |                 |_//@- app_localization.dart
| |        
| |//!-- Data
| |       |//?-- web_services (Feature based){retrofit}
| |                |-//@ feature1_name   
| |                |      |-//* feature1_web_services.dart 
| |                |      |_//* feature1_web_services.g.dart 
| |                |_ //@ feature2_name   
| |       |//?-- model (Json serializer){json_serializable}
| |                |-//@ feature1_name   
| |                |      |-//* feature1_model.dart 
| |                |      |_//* feature1_model.g.dart 
| |                |_ //@ feature2_name                          
| |       |//?-- repository  {feature based}    
| |       |_//?- business_logic            
| |                |-//@ feature1_name   
| |                |      |- //TODO:domain layers if needed 
| |                |      |-//* view_model (state management related to UI only) 
| |                |      |_//* network_services (state management to handle
| |                |                    dealing with repos)//*cubit+Freezed*/
| |                |_ //@ feature2_name                          
| |//!-- Presentation
| |        |//?-- common_widgets
| |        |//?-- screens
| |        |       |-//@ page1_name   
| |        |       |      |_//* page.dart
| |        |       |_ //@ page2_name   
| |        |//?-- widgets
| |                |-//@ page1_name   
| |                |      |-//* widget1.dart
| |                |      |-//* widget2.dart 
| |                |      |_//* more_widgets // if needed 
| |                |_ //@ page2_name   
| |
| |//!- json [Save json for backups- not related to our app]
| |//!- firebase_options
| |_//!- main.dart
*/ */
*/ */
*/ */
*/ */
*/ */
*/ */
*/ 

