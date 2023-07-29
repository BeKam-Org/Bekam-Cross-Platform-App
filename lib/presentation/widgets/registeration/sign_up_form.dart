// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/signup_cubit.dart';
import 'package:bekam/presentation/common_widget/color_loader.dart';
import 'package:bekam/presentation/widgets/global_app_btn.dart';
import 'package:bekam/presentation/widgets/registeration/text_field.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: GlobalAppEdgeInsets.all_6,
      children: [
        Form(
          child: Column(
            children: [
              //! first and last name
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) {
                  if (current is UpdateState) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: GlobalAppTextField(
                          isObscured: false,
                          hintText: GlobalAppStrings.firstName,
                          labelText: GlobalAppStrings.firstName,
                          textInputType: TextInputType.name,
                          suggerstion: true,
                          prefixIcon: GlobalAppIcons.firstNameIcon,
                          prefixIconColor: Theme.of(context).primaryColor,
                          focusNode: SignupCubit.get(context).firstNameFousNode,
                          controller:
                              SignupCubit.get(context).firstNameController,
                          onEditingComplete: () => SignupCubit.get(context)
                              .firsNameEditingControl(context),
                          changed: () => SignupCubit.get(context).updateState(),
                          suffixIcon: GestureDetector(
                              onTap: () => SignupCubit.get(context)
                                  .firstNameController
                                  .clear(),
                              child: const Icon(GlobalAppIcons.closeIcon)),
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      GlobalAppSizedBox.w_15,
                      Expanded(
                        child: GlobalAppTextField(
                          isObscured: false,
                          hintText: GlobalAppStrings.lastName,
                          labelText: GlobalAppStrings.lastName,
                          textInputType: TextInputType.name,
                          suggerstion: true,
                          prefixIcon: GlobalAppIcons.lastNameIcon,
                          prefixIconColor: Theme.of(context).primaryColor,
                          focusNode: SignupCubit.get(context).lastNameFoxusNode,
                          controller:
                              SignupCubit.get(context).lastNameController,
                          onEditingComplete: () => SignupCubit.get(context)
                              .lastNameEditingControl(context),
                          changed: () => SignupCubit.get(context).updateState(),
                          suffixIcon: GestureDetector(
                              onTap: () => SignupCubit.get(context)
                                  .lastNameController
                                  .clear(),
                              child: const Icon(GlobalAppIcons.closeIcon)),
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  );
                },
              ),

              //! Sized Box
              GlobalAppSizedBox.h_16,

              //*---------------------------------------------------------------------------------------*/
              //*---------------------------------------  Email  ---------------------------------------*/
              //*---------------------------------------------------------------------------------------*/
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) {
                  if (current is UpdateState) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return GlobalAppTextField(
                    labelText: GlobalAppStrings.email,
                    isObscured: false,
                    hintText: GlobalAppStrings.emailHint,
                    borderColor: Theme.of(context).primaryColor,
                    prefixIcon: GlobalAppIcons.emailOutlined,
                    prefixIconColor: Theme.of(context).primaryColor,
                    controller: SignupCubit.get(context).emailController,
                    focusNode: SignupCubit.get(context).emailFocusNode,
                    onEditingComplete: () =>
                        SignupCubit.get(context).emailEditingControl(context),
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                    suggerstion: true,
                    suffixIcon: GestureDetector(
                        onTap: () =>
                            SignupCubit.get(context).emailController.clear(),
                        child: const Icon(GlobalAppIcons.closeIcon)),
                    changed: () => SignupCubit.get(context).updateState(),
                  );
                },
              ),

              //! Sized Box
              GlobalAppSizedBox.h_16,

              //*---------------------------------------------------------------------------------------*/
              //*---------------------------------------  Phone number  ---------------------------------------*/
              //*---------------------------------------------------------------------------------------*/
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      borderRadius: GlobalAppBorderRadius.r_10,
                      boxShadow: [
                        BoxShadow(
                            color: GlobalAppColors.appGrey.withOpacity(0.1),
                            spreadRadius: GlobalAppSizes.s_1,
                            blurRadius: GlobalAppSizes.s_3,
                            offset: const Offset(
                              GlobalAppSizes.s_0,
                              GlobalAppSizes.s_5,
                            )) // changes position of shadow
                      ],
                    ),
                    child: CountryCodePicker(
                      onChanged: (CountryCode countryCode) {
                        //_countryDialCode = countryCode.dialCode;
                      },
                      initialSelection: 'EG',
                      favorite: const ['+20', 'EG'],
                      showDropDownButton: true,
                      padding: EdgeInsets.zero,
                      showFlagMain: true,
                      textStyle: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color),
                    ),
                  ),
                  GlobalAppSizedBox.w_15,
                  Expanded(
                    child: BlocBuilder<SignupCubit, SignupState>(
                      buildWhen: (previous, current) {
                        if (current is UpdateState) {
                          return true;
                        } else {
                          return false;
                        }
                      },
                      builder: (context, state) {
                        return GlobalAppTextField(
                          isObscured: false,
                          labelText: GlobalAppStrings.phoneNumber,
                          hintText: GlobalAppStrings.phoneNumberHint,
                          borderColor: Theme.of(context).primaryColor,
                          prefixIcon: GlobalAppIcons.personOutline,
                          prefixIconColor: Theme.of(context).primaryColor,
                          controller: SignupCubit.get(context).numberController,
                          focusNode:
                              SignupCubit.get(context).phoneNumberFocusNode,

                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number,
                          suggerstion: true,
                          suffixIcon: GestureDetector(
                              onTap: () => SignupCubit.get(context)
                                  .numberController
                                  .clear(),
                              child: const Icon(GlobalAppIcons.closeIcon)),
                          // label: GlobalAppStrings.email,

                          changed: () => SignupCubit.get(context).updateState(),
                          onEditingComplete: () {
                            SignupCubit.get(context)
                                .phoneNumbereditingControl(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),

              //! Sized Box
              GlobalAppSizedBox.h_16,

              //*---------------------------------------------------------------------------------------*/
              //*-------------------------------------  Password  --------------------------------------*/
              //*---------------------------------------------------------------------------------------*/
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) {
                  if (current is UpdateState ||
                      current is ToggleHiddenPassword) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return GlobalAppTextField(
                    onEditingComplete: () => SignupCubit.get(context)
                        .passwordEditingControl(context),
                    controller: SignupCubit.get(context).passwordController,
                    focusNode: SignupCubit.get(context).passwordFocusNode,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    suggerstion: false,
                    labelText: GlobalAppStrings.password,
                    hintText: GlobalAppStrings.passwordHint,
                    prefixIcon: GlobalAppIcons.lockOutlined,
                    borderColor: Theme.of(context).primaryColor,
                    prefixIconColor: Theme.of(context).primaryColor,
                    isObscured: SignupCubit.get(context).isHidden == true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        SignupCubit.get(context).toggleIsHidden();
                      },
                      child: SignupCubit.get(context).isHidden
                          ? Icon(
                              GlobalAppIcons.unHidePass,
                              color: Theme.of(context).colorScheme.secondary,
                            )
                          : Icon(
                              GlobalAppIcons.unHidePass,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                    ),
                    changed: () => SignupCubit.get(context).updateState(),
                  );
                },
              ),

              //! Sized Box
              GlobalAppSizedBox.h_16,

              //*---------------------------------------------------------------------------------------*/
              //*----------------------------------- Confirm  Password  --------------------------------------*/
              //*---------------------------------------------------------------------------------------*/
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) {
                  if (current is UpdateState ||
                      current is ToggleHiddenPassword) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return GlobalAppTextField(
                    onEditingComplete: () => SignupCubit.get(context)
                            .submitCheck()
                        ? SignupCubit.get(context).submit(context)
                        : SignupCubit.get(context).submitErrorDialog(context),
                    controller:
                        SignupCubit.get(context).confirmPasswordController,
                    focusNode:
                        SignupCubit.get(context).confirmPasswordFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    suggerstion: false,
                    labelText: GlobalAppStrings.confirmPassword,
                    hintText: GlobalAppStrings.passwordHint,
                    prefixIcon: GlobalAppIcons.lockOutlined,
                    borderColor: Theme.of(context).primaryColor,
                    prefixIconColor: Theme.of(context).primaryColor,
                    isObscured: SignupCubit.get(context).isHidden == true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        SignupCubit.get(context).toggleIsHidden();
                      },
                      child: SignupCubit.get(context).isHidden
                          ? Icon(
                              GlobalAppIcons.unHidePass,
                              color: Theme.of(context).colorScheme.secondary,
                            )
                          : Icon(
                              GlobalAppIcons.unHidePass,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                    ),
                    changed: () => SignupCubit.get(context).updateState(),
                  );
                },
              ),
            ],
          ),
        ),
        //*---------------------------------------------------------------------------------------*/
        //*-------------------------------------  login Button  ----------------------------------*/
        //*---------------------------------------------------------------------------------------*/

        Container(
          margin: GlobalAppEdgeInsets.all_20,
          child: BlocBuilder<SignupCubit, SignupState>(
            buildWhen: (previous, current) {
              if (current is ToggleLoadingState) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return SignupCubit.get(context).isLoading
                  ? const ColorLoader()
                  : GlobalAppButton(
                      onPressed: () {
                        SignupCubit.get(context).submitCheck()
                            ? SignupCubit.get(context).submit(context)
                            : SignupCubit.get(context)
                                .submitErrorDialog(context);
                      },
                      buttonText: GlobalAppStrings.signUp,
                    );
            },
          ),
        )
      ],
    );
  }
}
