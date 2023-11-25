import 'package:auto_route/annotations.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/home/animated_nav_bart/animated_nav_bar.dart';
import 'package:bekam/presentation/widgets/home/animated_nav_bart/animated_nav_bar_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.colorScheme.onPrimaryContainer,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
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
            style: MyNavBarStyle.google,
            textStyle: Get.textTheme.bodyMedium,
            rippleColor:
                Colors.grey[800]!, // tab button ripple color when pressed
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
            activeColor: GlobalAppColors.primaryColor, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                GlobalAppColors.primaryColor.withOpacity(0.3), // selected tab background color
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
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
