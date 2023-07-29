part of values;

class GlobalAppColors {
  static Color getWhiteColor(BuildContext context) {
    return ThemeCubit.get(context).darkTheme
        ? const Color(0xFFebebeb)
        : const Color(0xFFD4D4D4);
  }

  static Color getIconBg(BuildContext context) {
    return ThemeCubit.get(context).darkTheme
        ? const Color(0xFF2e2e2e)
        : const Color(0xFFF9F9F9);
  }

  static Color getPrimary(BuildContext context) {
    return ThemeCubit.get(context).darkTheme
        ? const Color(0xFFf0f0f0)
        : Theme.of(context).primaryColor;
  }
  //Color.fromRGBO(239, 62, 65, 1); //Colors.pink[700];

  static const Color appGrey = Color.fromRGBO(156, 158, 160, 1);

  static const Color transparent = Colors.transparent;
}
