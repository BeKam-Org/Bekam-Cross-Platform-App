// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

class HomePageBaseContainer extends StatelessWidget {
  final Widget child;
  const HomePageBaseContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.myWidth,
        top: 10.myHeight,
        right: 16.myWidth,
      ),
      padding: EdgeInsets.symmetric(vertical: 20.myHeight),
      decoration: GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: GlobalAppBorderRadius.roundedBorder15,
      ),
      child: child,
    );
  }
}
