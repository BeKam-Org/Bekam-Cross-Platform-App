// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';
import 'package:bekam/presentation/common_widget/theme_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class GlobalAppBar extends PreferredSize {
  final String title;
  final bool isHomePage;

  GlobalAppBar({Key? key, required this.title, required this.isHomePage})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(72),
          child: AppBar(),
        );

  @override
  Widget build(BuildContext context) {
    final ThemeCubit theme =ThemeCubit.get(context);
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar brightness (optional)
        statusBarIconBrightness: ThemeCubit.get(context).theme
            ? Brightness.dark
            : Brightness.light, // For Android (dark icons)
        statusBarBrightness: ThemeCubit.get(context).theme
            ? Brightness.dark
            : Brightness.light, // For iOS (dark icons)
      ),
      title: Text(
        title,
        style:GlobalAppStyles.titilliumItalic.copyWith(color:
        ThemeCubit.get(context).theme ? Colors.white :   Colors.black, fontSize: GlobalAppSizes.s_25)
      ),
      centerTitle: true,
      elevation: GlobalAppSizes.s_0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actions: [
        isHomePage ? Container() : themeIcon(theme, context),
      ],
      leading: isHomePage
          ? themeIcon(theme, context)
          : IconButton(
              icon: Icon(GlobalAppIcons.arrowBackIos,
                  color: Theme.of(context).colorScheme.secondary),
              onPressed: () => Navigator.of(context).pop(),
            ),
    );
  }

  @override
  Size get preferredSize {
    return const Size(double.infinity, kToolbarHeight);
  }
}
