// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/registeration_type_dart_cubit.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';
import 'package:bekam/data/model/registeration_type.dart';
import 'package:bekam/presentation/widgets/registeration/login_form.dart';
import 'package:bekam/presentation/widgets/registeration/sign_up_form.dart';

class RegisterationPage extends StatelessWidget {
  const RegisterationPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool themeCubit = ThemeCubit.get(context).theme;
    PageController pageController = PageController(initialPage: 0);

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          themeCubit
              ? const SizedBox()
              : Image.asset(
                  GlobalAppImages.background,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  fit: BoxFit.fill,
                ),

          // regesteration column
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                GlobalAppSizedBox.h_30,
                Image.asset(
                  GlobalAppImages.logoWithName,
                  height: GlobalAppSizes.s_150,
                  width: GlobalAppSizes.s_200,
                ),

                // body
                Padding(
                  padding: GlobalAppEdgeInsets.all_20,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: GlobalAppSizes.s_0,
                        right: GlobalAppSizes.s_5,
                        left: GlobalAppSizes.s_0,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 1,
                          color: themeCubit
                              ? const Color(0xFF999999)
                              : const Color(0xFFE6E6E6),
                        ),
                      ),
                      BlocBuilder<RegisterationTypeDartCubit,
                          RegisterationTypeDartState>(
                        builder: (context, state) {
                          RegistrationType registrationType =
                              RegisterationTypeDartCubit.get(context).type;
                          RegisterationTypeDartCubit registerationTypeCubit =
                              RegisterationTypeDartCubit.get(context);
                          return Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  pageController.animateToPage(0,
                                      duration: Duration(
                                          seconds: GlobalAppSizes.s_1.toInt()),
                                      curve: Curves.easeInOut);
                                  registerationTypeCubit
                                      .toggleRegisterationType(
                                          RegistrationType.login);
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      GlobalAppStrings.login,
                                      style: registrationType ==
                                              RegistrationType.login
                                          ? GlobalAppStyles.titilliumSemiBold
                                          : GlobalAppStyles.titilliumRegular,
                                    ),
                                    Container(
                                      height: GlobalAppSizes.s_2,
                                      width: GlobalAppSizes.s_50,
                                      margin: GlobalAppEdgeInsets.top_8,
                                      color: registrationType ==
                                              RegistrationType.login
                                          ? Theme.of(context).primaryColor
                                          : GlobalAppColors.transparent,
                                    )
                                  ],
                                ),
                              ),
                              GlobalAppSizedBox.w_25,
                              InkWell(
                                onTap: () {
                                  pageController.animateToPage(1,
                                      duration: Duration(
                                          seconds: GlobalAppSizes.s_1.toInt()),
                                      curve: Curves.easeInOut);
                                  registerationTypeCubit
                                      .toggleRegisterationType(
                                          RegistrationType.signup);
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      GlobalAppStrings.signUp,
                                      style: registrationType ==
                                              RegistrationType.signup
                                          ? GlobalAppStyles.titilliumSemiBold
                                          : GlobalAppStyles.titilliumRegular,
                                    ),
                                    Container(
                                      height: GlobalAppSizes.s_2,
                                      width: GlobalAppSizes.s_60,
                                      margin: GlobalAppEdgeInsets.top_8,
                                      color: registrationType ==
                                              RegistrationType.signup
                                          ? Theme.of(context).primaryColor
                                          : GlobalAppColors.transparent,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),

                // forms
                BlocBuilder<RegisterationTypeDartCubit,
                    RegisterationTypeDartState>(
                  builder: (context, state) {
                    RegistrationType registrationType =
                        RegisterationTypeDartCubit.get(context).type;
                    RegisterationTypeDartCubit registerationTypeCubit =
                        RegisterationTypeDartCubit.get(context);
                    return Expanded(
                      child: PageView.builder(
                        itemCount: 2,
                        controller: pageController,
                        onPageChanged: (index) {
                          if (index == 0) {
                            registerationTypeCubit.toggleRegisterationType(
                                RegistrationType.login);
                          } else {
                            registerationTypeCubit.toggleRegisterationType(
                                RegistrationType.signup);
                          }
                        },
                        itemBuilder: (context, index) {
                          if (registrationType == RegistrationType.login) {
                            return const LoginForm();
                          } else {
                            return const SignUpWidget();
                          }
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
