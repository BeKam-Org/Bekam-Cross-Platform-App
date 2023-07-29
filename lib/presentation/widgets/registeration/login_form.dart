//! 🐦 Flutter imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/login_cubit_cubit.dart';
import 'package:bekam/presentation/common_widget/color_loader.dart';
import 'package:bekam/presentation/widgets/global_app_btn.dart';
import 'package:bekam/presentation/widgets/registeration/text_field.dart';

//! 📦 Package imports:

//! 🌎 Project imports:

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: GlobalAppEdgeInsets.all_6,
      child: Form(
        child: ListView(
          padding: GlobalAppEdgeInsets.sv_10,
          children: [
            //*-------------------------------------------------------*/
            //*--------------------  Email  --------------------------*/
            //*-------------------------------------------------------*/
            BlocBuilder<LoginCubitCubit, LoginCubitState>(
              buildWhen: (previous, current) {
                if (current is UpdateState) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return GlobalAppTextField(
                  isValidator: true,
                  validatorMessage: 'Empty field!',
                  isObscured: false,
                  labelText: GlobalAppStrings.email,
                  hintText: GlobalAppStrings.emailHint,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: GlobalAppIcons.emailOutlined,
                  prefixIconColor: Theme.of(context).primaryColor,
                  controller: LoginCubitCubit.get(context).emailFieldController,
                  focusNode: LoginCubitCubit.get(context).emailFocusNode,
                  onEditingComplete: () =>
                      LoginCubitCubit.get(context).emailEditingControl(context),
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  suggerstion: true,
                  suffixIcon: GestureDetector(
                    onTap: () => LoginCubitCubit.get(context)
                        .emailFieldController
                        .clear(),
                    child: const Icon(GlobalAppIcons.closeIcon),
                  ),
                  changed: () => LoginCubitCubit.get(context).updateState(),
                );
              },
            ),

            //! sized box
            GlobalAppSizedBox.h_16,

            //*---------------------------------------------------------------------------------------*/
            //*-------------------------------------  Password  --------------------------------------*/
            //*---------------------------------------------------------------------------------------*/
            BlocBuilder<LoginCubitCubit, LoginCubitState>(
              buildWhen: (previous, current) {
                if (current is UpdateState || current is ToggleHiddenPassword) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return GlobalAppTextField(
                  isValidator: true,
                  validatorMessage: 'Empty field!',
                  onEditingComplete: () {
                    LoginCubitCubit.get(context).submitCheck()
                        ? LoginCubitCubit.get(context).submit(context)
                        : LoginCubitCubit.get(context)
                            .submitErrorDialog(context);
                  },
                  controller:
                      LoginCubitCubit.get(context).passwordFieldController,
                  focusNode: LoginCubitCubit.get(context).passwordFocusNode,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  suggerstion: false,
                  labelText: GlobalAppStrings.password,
                  hintText: GlobalAppStrings.passwordHint,
                  prefixIcon: GlobalAppIcons.lockOutlined,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIconColor: Theme.of(context).primaryColor,
                  isObscured: LoginCubitCubit.get(context).isHidden == true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      LoginCubitCubit.get(context).toggleIsHidden();
                    },
                    child: LoginCubitCubit.get(context).isHidden
                        ? Icon(
                            GlobalAppIcons.unHidePass,
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        : Icon(
                            GlobalAppIcons.unHidePass,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                  ),
                  changed: () => LoginCubitCubit.get(context).updateState(),
                );
              },
            ),

            //*---------------------------------------------------------------------------------------*/
            //*-------------------------------------  login Button  ----------------------------------*/
            //*---------------------------------------------------------------------------------------*/
            Container(
              margin: GlobalAppEdgeInsets.all_20,
              child: BlocBuilder<LoginCubitCubit, LoginCubitState>(
                buildWhen: (previous, current) {
                  if (current is ToggleLoadingState) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return LoginCubitCubit.get(context).isLoading
                      ? const ColorLoader()
                      : GlobalAppButton(
                          onPressed: () {
                            LoginCubitCubit.get(context).submitCheck()
                                ? LoginCubitCubit.get(context).submit(context)
                                : LoginCubitCubit.get(context)
                                    .submitErrorDialog(context);
                          },
                          buttonText: GlobalAppStrings.login,
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
