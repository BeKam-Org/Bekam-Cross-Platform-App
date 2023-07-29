// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';

class GlobalAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const GlobalAppButton(
      {super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: GlobalAppEdgeInsets.all_0),
      child: Container(
        height: GlobalAppSizes.s_45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: GlobalAppColors.getWhiteColor(context),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: GlobalAppSizes.s_1,
              blurRadius: GlobalAppSizes.s_7,
              offset: const Offset(GlobalAppSizes.s_0, GlobalAppSizes.s_1),
            ),
          ],
          gradient: (ThemeCubit.get(context).theme || onPressed == () {})
              ? null
              : LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor,
                  ],
                ),
        ),
        child: Text(
          buttonText,
          style: GlobalAppStyles.titilliumSemiBold.copyWith(
              fontSize: GlobalAppSizes.s_16,
              color: Theme.of(context).highlightColor),
        ),
      ),
    );
  }
}
