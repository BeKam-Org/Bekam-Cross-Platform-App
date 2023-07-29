// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

IconButton themeIcon(theme, context) {
  return IconButton(
    icon: Icon(
      (theme.theme)
          ? GlobalAppIcons.darkModeIcon
          : GlobalAppIcons.lightModeIcon,
      color: Theme.of(context).colorScheme.secondary,
    ),
    onPressed: () {
      theme.switchTheme();
    },
  );
}
