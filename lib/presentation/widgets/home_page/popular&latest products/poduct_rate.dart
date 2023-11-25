// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      height: 24.myHeight,
      width: 49.myWidth,
      text: "lbl_4_5".tr(context),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.myWidth),
        child: CustomImageView(
          imagePath: GlobalAppSVG.imgCloseOnprimarycontainer,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
    );
  }
}
