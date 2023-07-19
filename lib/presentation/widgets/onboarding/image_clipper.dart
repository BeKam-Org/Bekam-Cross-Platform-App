
// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

// Project imports:

/*-----------------------------------------------------------------------------------------*/
/*--------------------------------------  Clippers  -------------------------------------*/
/*-----------------------------------------------------------------------------------------*/
class OnBoardingImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var x = size.width;
    var y = size.height;
    path.lineTo(GlobalAppSizes.s_0, y);
    path.quadraticBezierTo(x / GlobalAppSizes.s_4, y - GlobalAppSizes.s_50,
        x / GlobalAppSizes.s_2, y - GlobalAppSizes.s_30);
    path.quadraticBezierTo(
        GlobalAppSizes.s_3 * x / GlobalAppSizes.s_4,
        y - GlobalAppSizes.s_5,
        x - GlobalAppSizes.s_50,
        y - GlobalAppSizes.s_40);
    path.quadraticBezierTo(x - GlobalAppSizes.s_20, y - GlobalAppSizes.s_60, x,
        y - GlobalAppSizes.s_100);
    path.lineTo(x, GlobalAppSizes.s_0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
