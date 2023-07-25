import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/dices_cubit.dart';
import 'package:bekam/data/cubit/registeration_type_dart_cubit.dart';
import 'package:bekam/data/model/registeration_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterationTypeSwitcher extends StatelessWidget {
  const RegisterationTypeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AnimatedDefaultTextStyle(
          curve: Curves.easeOutBack,
          style: TextStyle(),
          duration: Duration(milliseconds: 500),
          child: Text("Login"),
        ),
        BlocBuilder<RegisterationTypeDartCubit, RegisterationTypeDartState>(
          buildWhen: (previous, current) => current is ChangeRegisterationType,
          builder: (context, state) {
            return Switch(
              splashRadius: 50,
              value: RegisterationTypeDartCubit.get(context).type ==
                  RegistrationType.signup,
              onChanged: (value) {
                DicesCubit.get(context).changeDices();

                RegisterationTypeDartCubit.get(context)
                    .toggleRegisterationType();
              },
              activeTrackColor: GlobalAppColors.appGrey,
              inactiveTrackColor: GlobalAppColors.appGrey,
              inactiveThumbColor: GlobalAppColors.appBlue,
              activeColor: GlobalAppColors.appBlue,
            );
          },
        ),
        const AnimatedDefaultTextStyle(
          curve: Curves.easeOutBack,
          style: TextStyle(),
          duration: Duration(milliseconds: 500),
          child: Text("SigUp"),
        ),
      ],
    );
  }
}
