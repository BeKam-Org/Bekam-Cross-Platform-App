// 🐦 Flutter imports:
import 'package:bekam/core/helper/share_prefs_helper.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

/// [Cubit] responsible for managing the theme state of the application.
class ThemeCubit extends Cubit<ThemeState> {
  /// An instance of [PrefUtils] for managing preferences using SharedPreferences.
  final PrefUtils prefUtils;

  /// Retrieves the [ThemeCubit] instance using [BuildContext].
  static ThemeCubit get(BuildContext context) => BlocProvider.of(context);

  /// Creates an instance of [ThemeCubit].
  ThemeCubit(this.prefUtils) : super(ThemeInitial()) {
    _loadPrefs();
  }

  /// Represents the current state of the dark theme.
  bool darkTheme = false;

  /// Gets the current theme mode.
  bool get theme => darkTheme;


  /// Toggles between light and dark themes.
  switchTheme() {
    darkTheme = !darkTheme;
    _savePrefs();
    emit(ThemeSwithch());
  }

  /// Saves the current theme preference using SharedPreferences.
  _savePrefs() async {
    prefUtils.sharedPreferences!.setBool('theme', darkTheme);
  }

  /// Loads the theme preference from SharedPreferences.
  _loadPrefs() async {
    darkTheme = prefUtils.sharedPreferences!.getBool('theme') ?? false;
    emit(ThemeSharedPrefs());
  }
}
