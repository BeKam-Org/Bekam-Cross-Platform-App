//ignore: unused_import    
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// Utility class for managing preferences using SharedPreferences.
class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  /// Constructor to initialize SharedPreferences instance.
  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  /// Initializes the SharedPreferences instance asynchronously.
  ///
  /// If SharedPreferences is not initialized, this method initializes it and prints a log message.
  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  /// Clears all the data stored in preferences.
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

}
    