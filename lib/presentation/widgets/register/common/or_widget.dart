// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

/// [OrWidget] is a StatelessWidget representing a visual divider with the "OR" label in between.
class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left Divider
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.myHeight),
          child: SizedBox(
            width: 125.myWidth,
            child: const Divider(color: GlobalAppColors.primaryColor),
          ),
        ),

        // "OR" Label
        Text(
          "lbl_or".tr(context),
          style: CustomTextStyles.bodyMediumBluegray40001_3,
        ),

        // Right Divider
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.myHeight),
          child: SizedBox(
            width: 125.myWidth,
            child: const Divider(color: GlobalAppColors.primaryColor),
          ),
        )
      ],
    );
  }
}
