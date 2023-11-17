// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// AutoRouteGuard implementation for handling authentication checks during navigation.
class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    /// the navigation is paused until resolver.next() is called with either
    /// true to resume/continue navigation or false to abort navigation
    if (FirebaseAuth.instance.currentUser != null) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      /// Redirects the user to the login page; resolver is completed.
      
      // resolver.redirect(
      //   // LoginRoute(
      //   //   onResult: (success) {
      //   //     // if success == true the navigation will be resumed
      //   //     // else it will be aborted
      //   //     if (success == true) router.removeLast();
      //   //     resolver.next(success ?? false);
      //   //   },
      //   // ),
      // );
    }
  }
}

