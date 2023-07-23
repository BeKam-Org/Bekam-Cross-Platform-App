part of values;

mixin GlobalAppBorders {
  static RoundedRectangleBorder circular10 =
      RoundedRectangleBorder(borderRadius: GlobalAppBorderRadius.r_10);
}

class GlobalAppSizedBox {}

class GlobalAppSpacers {}

class GlobalAppEdgeInsets {
  // EdgeInsets.all

  //EdgeInsets.vertical symmetric

  // EdgeInsets.horizontal symmetric

  // EdgeInsets symmetric both

  //special left

  // EdgeInsets top only

  // EdgeInsets bottom only

  // special edges

  //EdgeInsets left-top-right-bottom
  static const EdgeInsets right20Top20 =
      EdgeInsets.only(right: GlobalAppSizes.s_20, top: GlobalAppSizes.s_20);
  static const EdgeInsets left20Top12 =
      EdgeInsets.only(left: GlobalAppSizes.s_20, top: GlobalAppSizes.s_12);
}
