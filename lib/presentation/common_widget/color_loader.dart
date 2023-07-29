// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_spinkit/flutter_spinkit.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

class ColorLoader extends StatelessWidget {
  const ColorLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SpinKitCubeGrid(
        color: Theme.of(context).primaryColor , size: GlobalAppSizes.s_40);
  }
}
