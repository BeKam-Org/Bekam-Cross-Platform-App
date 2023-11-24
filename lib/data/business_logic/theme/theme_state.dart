part of 'theme_cubit.dart';

/// Abstract base class for the theme states used by [ThemeCubit].
@immutable
abstract class ThemeState  {}

/// Initial state of the theme before any changes.
class ThemeInitial extends ThemeState{}

/// Represents the state when the theme preference is loaded from SharedPreferences.
class ThemeSharedPrefs extends ThemeState {}

/// Represents the state when the theme is switched between light and dark.
class ThemeSwithch extends ThemeState {}