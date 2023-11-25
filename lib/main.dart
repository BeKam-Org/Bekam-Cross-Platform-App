// 🐦 Flutter imports:
import 'package:bekam/core/helper/share_prefs_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/bloc_observer/bloc_observer.dart';
import 'package:bekam/core/di/get_initializer.dart';
import 'package:bekam/firebase_options.dart';
import 'package:bekam/select_cheap.dart';

/// The main entry point for the Flutter application.
void main() async {
  /// Setup dependency injection using GetIt.
  setupGetIt();


  /// Sets the global observer for BLoC changes using MyBlocObserver.
  Bloc.observer = MyBlocObserver();

  /// Ensures that Flutter bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  /// Initializes Firebase services.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// Initialize SharedPreferences.
  await getIt<PrefUtils>().init();

  /// Runs the application by creating an instance of MyApp.
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const SelectCheapApp(), // Wrap your app
    ),
  );
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
