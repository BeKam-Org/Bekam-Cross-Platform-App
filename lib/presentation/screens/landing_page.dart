import 'dart:async';

import 'package:bekam/data/cubit/login_cubit_cubit.dart';
import 'package:bekam/data/cubit/providers/auth_provider.dart';
import 'package:bekam/data/cubit/signup_cubit.dart';
import 'package:bekam/data/cubit/user_verification_helper_cubit.dart';
import 'package:bekam/presentation/screens/not_verified_mail.dart';
import 'package:bekam/presentation/screens/registeration/registeration_page.dart';
import 'package:bekam/presentation/screens/router_offline.dart';
import 'package:bekam/presentation/screens/search/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  static String routeName = "/landingPage";

  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Timer? timer;
  @override
  void initState() {
    UserVerificationHelperCubit.get(context).checkEmailVerified();
    super.initState();
  }

  late UserVerificationHelperCubit _resendMail;
  @override
  void didChangeDependencies() {
    _resendMail = UserVerificationHelperCubit.get(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //*---------------------------  firebaseAuth variable  ----------------------------*/
    final auth = Auth();

    return StreamBuilder(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final Object? user = snapshot.data;
          //*---------------------------  not signed in   ----------------------------*/
          //*---------------------------  user is null  ----------------------------*/
          if (user == null) {
            //*-----------------------------------------------------------------------------------------------*/
            //*-------------------------------------  login form Provider  -----------------------------------*/
            //*-----------------------------------------------------------------------------------------------*/
            return MultiBlocProvider(
              providers: [
                BlocProvider<SignupCubit>(
                  create: (context) => SignupCubit(),
                ),
                BlocProvider<LoginCubitCubit>(
                  create: (context) => LoginCubitCubit(),
                ),
              ],
              child: const RegisterationPage(),
            );
          }
          //*---------------------------  user signed in   ----------------------------*/
          //*---------------------------  user is not null ----------------------------*/
          FirebaseAuth.instance.currentUser!.reload();
          UserVerificationHelperCubit.get(context).checkEmailVerified();

         
          return BlocBuilder<UserVerificationHelperCubit,
              UserVerificationHelperState>(
            builder: (context, state) {
              if (!_resendMail.isEmailVerified) {
                Timer.periodic(
                  const Duration(seconds: 3),
                  (timer) {
                    _resendMail.checkEmailVerified();
                  },
                );
                return const NotVerifiedMail();
              }
              timer?.cancel();
              return const SearchPage();
            },
          );

          // return const MyBtmNavBar();
        }
/*-----------------------------------------------------------------------------------------------*/
/*-------------------------------------- UnStable connection ------------------------------------*/
/*-----------------------------------------------------------------------------------------------*/

        return const Scaffold(body: RouterOfflineScreen());
      },
    );
  }
}
