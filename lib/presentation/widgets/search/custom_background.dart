import 'dart:math';
import 'package:bekam/data/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/values.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = ThemeCubit.get(context);

    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 250,
        ),
        Positioned(
          top: -40,
          right: -50,
          child: CustomBox(
            angulo: 1.6,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Positioned(
          top: -40,
          right: -60,
          child: CustomBox(
            angulo: 1.2,
            color: Theme.of(context).hintColor,
          ),
        ),
        Positioned(
          child: _crearContenido(theme, context),
        ),
      ],
    );
  }

  _themeIcon(theme, context) {
    return IconButton(
      icon: Icon(
        (theme.theme)
            ? Icons.brightness_7_outlined
            : Icons.brightness_4_outlined,
        //color: Theme.of(context).w,
      ),
      onPressed: () {
        theme.switchTheme();
      },
    );
  }

  Widget _crearContenido(theme, BuildContext context) {
    return Container(
        height: 250,
        margin: const EdgeInsets.only(right: 10, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              GlobalAppImages.logoWithName,
              height: GlobalAppSizes.s_100,
              width: GlobalAppSizes.s_150,
            ),
                        
            _themeIcon(theme, context)
          ],
        ));
  }
}

class CustomBox extends StatelessWidget {
  //variables
  final Color color;
  final double angulo;

  //constructor de la clase
  const CustomBox({super.key, required this.color, required this.angulo});

  @override
  Widget build(BuildContext context) {
    //media query
    //final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: -pi / angulo,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        width: 250,
        height: 230, //alto
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
      ),
    );
  }
}
