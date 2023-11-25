// 🌎 Project imports:
import 'package:auto_route/auto_route.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/home_nav/animated_nav_bart/animated_nav_bar.dart';
import 'package:bekam/presentation/widgets/home_nav/animated_nav_bart/animated_nav_bar_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The [HomeNavBar] is a StatelessWidget that represents a custom navigation bar
/// designed for a home screen. It includes [AnimatedNavBar] with four tabs:
/// Home, Cart, Order, and Favourite.
class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: GlobalAppBorderRadius.circleBorder80,
        color: GlobalAppColors.blueA200.withOpacity(0.3),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      
      child: AnimatedNavBar(
        selectedIndex:  AutoTabsRouter.of(context).activeIndex,
        style: MyNavBarStyle.google,
        textStyle: Get.textTheme.bodyMedium,
        rippleColor: Colors.grey[800]!, // tab button ripple color when pressed
        hoverColor: Colors.grey[700]!, // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 15,
        tabActiveBorder:
            Border.all(color: Colors.black, width: 1), // tab button border
        // tab button shadow
        curve: Curves.easeInOut, // tab animation curves
        duration: const Duration(milliseconds: 300), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        activeColor:
            GlobalAppColors.primaryColor, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: GlobalAppColors.primaryColor
            .withOpacity(0.3), // selected tab background color
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 5), // navigation bar padding

        tabs: const [
          AnimatedNavBarButton(
            icon: FontAwesomeIcons.house,
            text: 'Home',
          ),
          AnimatedNavBarButton(
            icon: FontAwesomeIcons.cartArrowDown,
            text: 'Cart',
          ),
          AnimatedNavBarButton(
            icon: FontAwesomeIcons.bagShopping,
            text: 'Order',
          ),
          AnimatedNavBarButton(
            icon: FontAwesomeIcons.heart,
            text: 'Favourite',
          ),
        ],
        onTabChange: (index) {
          AutoTabsRouter.of(context).setActiveIndex(index);
        },
      ),
    );
  }
}
