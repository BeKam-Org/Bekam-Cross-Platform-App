part of values;

mixin GlobalAppBorders {
  static RoundedRectangleBorder circular10 =
      RoundedRectangleBorder(borderRadius: GlobalAppBorderRadius.r_10);
}

class GlobalAppSizedBox {
  //! width
  static const w_15 = SizedBox(
    width: GlobalAppSizes.s_15,
  );
  static const w_25 = SizedBox(
    width: GlobalAppSizes.s_25,
  );

  //! height
  static const h_4 = SizedBox(
    height: GlobalAppSizes.s_4,
  );
  static const h_16 = SizedBox(
    height: GlobalAppSizes.s_16,
  );
  static const h_30 = SizedBox(
    height: GlobalAppSizes.s_30,
  );
}

class GlobalAppSpacers {}

class GlobalAppEdgeInsets {
  //! symmetric horizontall
  static const EdgeInsets sh_20 =
      EdgeInsets.symmetric(horizontal: GlobalAppSizes.s_20);

  //! symmetric vertical
  static const EdgeInsets sv_10 =
      EdgeInsets.symmetric(vertical: GlobalAppSizes.s_10);

  //! all
  static const EdgeInsets all_0 = EdgeInsets.all(GlobalAppSizes.s_0);
  static const EdgeInsets all_6 = EdgeInsets.all(GlobalAppSizes.s_6);
  static const EdgeInsets all_10 = EdgeInsets.all(GlobalAppSizes.s_10);
  static const EdgeInsets all_16 = EdgeInsets.all(GlobalAppSizes.s_16);
  static const EdgeInsets all_20 = EdgeInsets.all(GlobalAppSizes.s_20);

  //! top
  static const EdgeInsets top_8 = EdgeInsets.only(top: GlobalAppSizes.s_8);

  //! right

  //! left
  static const EdgeInsets left16Right16 = EdgeInsets.only(
    left: GlobalAppSizes.s_16,
    right: GlobalAppSizes.s_16,
  );

  //! mix
  static const EdgeInsets right20Top20 =
      EdgeInsets.only(right: GlobalAppSizes.s_20, top: GlobalAppSizes.s_20);
  static const EdgeInsets left20Top12 =
      EdgeInsets.only(left: GlobalAppSizes.s_20, top: GlobalAppSizes.s_12);
  static const EdgeInsets left2Top3Bottom3 = EdgeInsets.only(
      left: GlobalAppSizes.s_2,
      top: GlobalAppSizes.s_3,
      bottom: GlobalAppSizes.s_3);
  static const EdgeInsets left30Right30 =
      EdgeInsets.only(left: GlobalAppSizes.s_30, right: 30.0);

  //! symmetric mix

  static const EdgeInsets sv12h15 = EdgeInsets.symmetric(
    vertical: GlobalAppSizes.s_12,
    horizontal: GlobalAppSizes.s_15,
  );
}
