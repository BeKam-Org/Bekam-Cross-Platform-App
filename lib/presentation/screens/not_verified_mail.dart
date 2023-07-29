import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/logout_cubit.dart';
import 'package:bekam/data/cubit/user_verification_helper_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotVerifiedMail extends StatelessWidget {
  const NotVerifiedMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            GlobalAppImages.notVerifiedMail,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: GlobalAppSizes.s_300,
            left: GlobalAppSizes.s_120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    GlobalAppStrings.notVerifiedMail,
                    style: GlobalAppStyles.robotoBold.copyWith(
                      color: Colors.black,
                      letterSpacing: GlobalAppSizes.s_1,
                      fontSize: GlobalAppSizes.s_25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: GlobalAppSizes.s_220,
            left: GlobalAppSizes.s_50,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Center(
                child: Text(
                  GlobalAppStrings.notVerifiedMailMessage,
                  style: GlobalAppStyles.robotoBold.copyWith(
                    color: Colors.black,
                    letterSpacing: GlobalAppSizes.s_1,
                    fontSize: GlobalAppSizes.s_16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: GlobalAppSizes.s_120,
              left: GlobalAppSizes.s_120,
              right: GlobalAppSizes.s_130,
              child: BlocBuilder<UserVerificationHelperCubit,
                  UserVerificationHelperState>(builder: (context, state) {
                return BlocBuilder<UserVerificationHelperCubit,
                    UserVerificationHelperState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        UserVerificationHelperCubit.get(context).canResentEmail
                            ? InkWell(
                                onTap: () async {
                                  if (UserVerificationHelperCubit.get(context)
                                      .canResentEmail) {
                                    await UserVerificationHelperCubit.get(
                                            context)
                                        .sendVerificationEmail(context);
                                  }
                                },
                                child: Container(
                                  height: GlobalAppSizes.s_40,
                                  width: MediaQuery.of(context).size.width /
                                      GlobalAppSizes.s_2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        GlobalAppSizes.s_30),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Center(
                                      child: Text(
                                          UserVerificationHelperCubit.get(
                                                      context)
                                                  .canResentEmail
                                              ? GlobalAppStrings.resendEmail
                                              : GlobalAppStrings.checkMail,
                                          style: GlobalAppStyles
                                              .titilliumSemiBold)),
                                ),
                              )
                            : Container(),
                        GlobalAppSizedBox.h_4,
                        InkWell(
                          onTap: () async {
                            LogoutCubit.get(context).confirmSignOut(context);
                          },
                          child: Container(
                            height: GlobalAppSizes.s_40,
                            width: MediaQuery.of(context).size.width /
                                GlobalAppSizes.s_2,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(GlobalAppSizes.s_30),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Center(
                                child: Text(GlobalAppStrings.pressToLogout,
                                    style: GlobalAppStyles.titilliumSemiBold)),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }))
        ],
      ),
    );
  }
}
