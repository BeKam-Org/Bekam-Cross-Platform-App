// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/localization/app_localization.dart';

/// Extension method to localize strings conveniently
extension LocalizationExtension on String {
  /// Getter method 'tr' to access localized strings.
  ///
  /// Returns the localized string corresponding to the provided key.
  String tr(BuildContext context) =>
      AppLocalization.of(context).getString(this);
}
