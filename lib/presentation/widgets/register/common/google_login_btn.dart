// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';

/// [GoogleLoginButton] is a StatelessWidget representing a custom button for Google login.
class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      // Setting the height of the button
      height: 48.myHeight,

      // Setting the text for the button
      text: "msg_connect_with_google".tr(context),

      // Adding a left icon to the button
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.myWidth),
        child: CustomImageView(
          imagePath: GlobalAppSVG.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),

      // Applying a custom button style
      buttonStyle: CustomButtonStyles.fillGray,

      // Applying custom text style to the button text
      buttonTextStyle: CustomTextStyles.titleSmall_1,

      // Handling the onPressed event when the button is tapped
      onPressed: () {
        // Add your Google login logic or method call here
        // Example: onTapConnectWithGoogle(context);
      },
    );
  }
}
