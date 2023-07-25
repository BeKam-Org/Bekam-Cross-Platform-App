// import 'package:bekam/data/cubit/drawer_cubit.dart';
// import 'package:bekam/data/cubit/login_cubit_cubit.dart';
// import 'package:bekam/data/cubit/providers/auth_provider.dart';
// import 'package:bekam/data/cubit/signup_cubit.dart';
// import 'package:bekam/presentation/screens/registeration/logout_page.dart';
// import 'package:bekam/presentation/screens/registeration/registeration_page.dart';
// import 'package:bekam/presentation/screens/router_offline.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LandingPage extends StatelessWidget {
//   static String routeName = "/landingPage";

//   const LandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     /*---------------------------  firebaseAuth variable  ----------------------------*/
//     final auth = Auth();

//     return StreamBuilder(
//         stream: auth.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.active) {
//             final Object? user = snapshot.data;
//             /*---------------------------  not signed in   ----------------------------*/
//             /*---------------------------  user is null  ----------------------------*/
//             if (user == null) {
//               /*-----------------------------------------------------------------------------------------------*/
//               /*-------------------------------------  login form Provider  ------------------------------------*/
//               /*-----------------------------------------------------------------------------------------------*/
//               return MultiBlocProvider(providers: [
//                 BlocProvider<SignupCubit>(
//                   create: (context) => SignupCubit(),
//                 ),
//                 BlocProvider<LoginCubitCubit>(
//                   create: (context) => LoginCubitCubit(),
//                 ),
//                 BlocProvider<DrawerCubit>(
//                   create: (context) => DrawerCubit(),
//                 )
//               ], child: const RegisterationPage());

//               // return const AuthMainPage();
//             }
//             /*---------------------------  user signed in   ----------------------------*/
//             /*---------------------------  user is not null ----------------------------*/

//             return LogoutPage(user: user);
//             // return const MyBtmNavBar();
//           }
// /*-----------------------------------------------------------------------------------------------*/
// /*-------------------------------------- UnStable connection ------------------------------------*/
// /*-----------------------------------------------------------------------------------------------*/
//           return const Scaffold(body: RouterOfflineScreen());
//         });
//   }
// }
