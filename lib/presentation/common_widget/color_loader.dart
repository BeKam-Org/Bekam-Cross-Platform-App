import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ColorLoader extends StatelessWidget {
  const ColorLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitCubeGrid(
        color: GlobalAppColors.appBlue, size: GlobalAppSizes.s_40);
  }
}
