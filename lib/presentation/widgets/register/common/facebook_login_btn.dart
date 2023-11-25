// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

/// [FacebookLoginButton] is a StatelessWidget representing a custom button for Facebook login.
class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      // Setting the height of the button
      height: 48.myHeight,

      // Setting the text for the button
      text: "msg_connect_with_facebook".tr(context),

      // Adding a left icon to the button
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.myWidth),
        child: CustomImageView(
          imagePath: GlobalAppSVG.imgFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),

      // Applying a custom button style
      buttonStyle: CustomButtonStyles.fillErrorContainer,

      // Applying custom text style to the button text
      buttonTextStyle: CustomTextStyles.titleSmall_1,

      // Handling the onPressed event when the button is tapped
      onPressed: () {
        // Add your Facebook login logic or method call here
        // Example: onTapConnectWithFacebook(context);
      },
    );
  }
}
