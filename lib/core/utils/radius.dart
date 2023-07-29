part of values;

class GlobalAppBorderRadius {
  static BorderRadius r_10 = BorderRadius.circular(GlobalAppSizes.s_10);
  //! top-right && bottom-right
  static const BorderRadius topRight10BottomRight10 = BorderRadius.only(
    topRight: GlobalAppRadius.c_10,
    bottomRight: GlobalAppRadius.c_10,
  );
}

class GlobalAppRadius {
  static const Radius c_10 = Radius.circular(GlobalAppSizes.s_10);
}
