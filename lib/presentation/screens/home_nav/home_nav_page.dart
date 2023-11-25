// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:bekam/core/router/auto_router.gr.dart';
import 'package:bekam/presentation/widgets/home_nav/home_nav_bar.dart';

@RoutePage()
class HomeNavPage extends StatefulWidget {
  const HomeNavPage({super.key});

  @override
  State<HomeNavPage> createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsRouter(
        // list of your tab routes
        // routes used here must be declared as children
        // routes of /dashboard
        routes: const [
          HomeRoute(),
          CartRoute(),
          OrderRoute(),
          FavouriteRoute(),
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
          opacity: animation,
          // the passed child is technically our animated selected-tab page
          child: child,
        ),
        builder: (context, child) {
          // Here we're building our Scaffold inside of AutoTabsRouter
          // to access the tabsRouter controller provided in this context
          //
          //alterntivly you could use a global key
          return Scaffold(
            body: child,
            bottomNavigationBar: const HomeNavBar(),
          );
        },
      ),
    );
  }
}
