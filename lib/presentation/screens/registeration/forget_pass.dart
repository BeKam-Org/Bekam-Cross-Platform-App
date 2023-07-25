import 'package:bekam/presentation/widgets/registeration/dices.dart';
import 'package:flutter/material.dart';

import '../../widgets/registeration/forms/forget_pass_form.dart';

class ForgetPassWord extends StatelessWidget {
  const ForgetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          VariousDiscs(),
          SingleChildScrollView(child: ForgetPassForm()),
        ],
      )),
    );
  }
}
