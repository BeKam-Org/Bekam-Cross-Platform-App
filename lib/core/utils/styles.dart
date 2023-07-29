part of values;

mixin GlobalAppStyles {
  // static TextStyle googleFontsGenerator(BuildContext context,
  //     {Color? color, FontWeight? fontWeight}) {
  //   return GoogleFonts.roboto(
  //     color: color,
  //     fontWeight: fontWeight ?? FontWeight.normal,
  //   );
  // }

static const titilliumRegular = TextStyle(
  fontFamily: 'TitilliumWeb',
  fontSize:GlobalAppSizes.s_14,
);

static const titilliumSemiBold = TextStyle(
  fontFamily: 'TitilliumWeb',
  fontSize: GlobalAppSizes.s_14,
  fontWeight: FontWeight.w600,
);

static const titilliumBold = TextStyle(
  fontFamily: 'TitilliumWeb',
  fontSize: GlobalAppSizes.s_14,
  fontWeight: FontWeight.w700,
);
static const titilliumItalic = TextStyle(
  fontFamily: 'TitilliumWeb',
  fontSize:GlobalAppSizes.s_14,
  fontStyle: FontStyle.italic,
);

static const robotoRegular = TextStyle(
  fontFamily: 'Roboto',
  fontSize: GlobalAppSizes.s_14,
);

static const robotoBold = TextStyle(
  fontFamily: 'Roboto',
  fontSize:GlobalAppSizes.s_14,
  fontWeight: FontWeight.w700,
);
}
